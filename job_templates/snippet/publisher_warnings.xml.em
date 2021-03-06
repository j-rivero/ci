    <hudson.plugins.warnings.WarningsPublisher plugin="warnings@@5.0.1">
      <healthy/>
      <unHealthy/>
      <thresholdLimit>low</thresholdLimit>
      <pluginName>[WARNINGS] </pluginName>
      <defaultEncoding/>
      <canRunOnFailed>false</canRunOnFailed>
      <usePreviousBuildAsReference>false</usePreviousBuildAsReference>
      <useStableBuildAsReference>false</useStableBuildAsReference>
      <useDeltaValues>false</useDeltaValues>
      <thresholds plugin="analysis-core@@1.96">
        <unstableTotalAll>0</unstableTotalAll>
        <unstableTotalHigh/>
        <unstableTotalNormal/>
        <unstableTotalLow/>
        <unstableNewAll/>
        <unstableNewHigh/>
        <unstableNewNormal/>
        <unstableNewLow/>
        <failedTotalAll/>
        <failedTotalHigh/>
        <failedTotalNormal/>
        <failedTotalLow/>
        <failedNewAll/>
        <failedNewHigh/>
        <failedNewNormal/>
        <failedNewLow/>
      </thresholds>
      <shouldDetectModules>false</shouldDetectModules>
      <dontComputeNew>true</dontComputeNew>
      <doNotResolveRelativePaths>true</doNotResolveRelativePaths>
      <includePattern/>
      <excludePattern>.*Microsoft.CppCommon.targets</excludePattern>
      <messagesPattern/>
      <categoriesPattern/>
      <parserConfigurations/>
      <consoleParsers>
        <hudson.plugins.warnings.ConsoleParser>
          <parserName>CMake</parserName>
        </hudson.plugins.warnings.ConsoleParser>
        <hudson.plugins.warnings.ConsoleParser>
@[if os_name in ['linux', 'linux-armhf', 'linux-aarch64', 'linux-centos']]@
          <parserName>GNU C Compiler 4 (gcc)</parserName>
@[elif os_name == 'osx']@
          <parserName>Clang (LLVM based)</parserName>
@[elif os_name in ['windows', 'windows-container']]@
          <parserName>MSBuild</parserName>
@[else]@
@{assert False, 'Unknown os_name: ' + os_name}@
@[end if]@
        </hudson.plugins.warnings.ConsoleParser>
      </consoleParsers>
    </hudson.plugins.warnings.WarningsPublisher>
