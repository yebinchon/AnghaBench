; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_main.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32*, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i8*, i8*, i32, %struct.TYPE_4__, i64, i64, i64, i64, i64, i64, i32*, i32*, i64, i32, i32*, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i32* }
%struct.TYPE_4__ = type { i32*, i32, i32, i32, i64, i64, i32*, i32*, i32*, i64, i64, i32*, i64, i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@REDIS_CLI_DEFAULT_PIPE_TIMEOUT = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_MIGRATE_TIMEOUT = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_MIGRATE_PIPELINE = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_REBALANCE_THRESHOLD = common dso_local global i32 0, align 4
@pref = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@spectrum_palette_color = common dso_local global i32 0, align 4
@spectrum_palette = common dso_local global i32 0, align 4
@spectrum_palette_color_size = common dso_local global i32 0, align 4
@spectrum_palette_size = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FAKETTY\00", align 1
@OUTPUT_RAW = common dso_local global i32 0, align 4
@OUTPUT_STANDARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@REDIS_ERR = common dso_local global i64 0, align 8
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i8* @sdsnew(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 19), align 8
  store i32 6379, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 42), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 41), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 40), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 39), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 38), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 37), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 17), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 16), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 36), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 35), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 34), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 15), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 14), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 5), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 33), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 32), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 13), align 8
  %9 = load i32, i32* @REDIS_CLI_DEFAULT_PIPE_TIMEOUT, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 31), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 12), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 9), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 30), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 29), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 28), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 27), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 26), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 25), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 24), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 3), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 23), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 22), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 21, i32 13), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 21, i32 12), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 21, i32 11), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 21, i32 10), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 21, i32 9), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 21, i32 8), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 21, i32 7), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 21, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 21, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 21, i32 4), align 8
  %10 = load i32, i32* @CLUSTER_MANAGER_MIGRATE_TIMEOUT, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 21, i32 3), align 8
  %11 = load i32, i32* @CLUSTER_MANAGER_MIGRATE_PIPELINE, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 21, i32 2), align 4
  %12 = load i32, i32* @CLUSTER_MANAGER_REBALANCE_THRESHOLD, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 21, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 21, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pref, i32 0, i32 0), align 4
  %13 = load i32, i32* @spectrum_palette_color, align 4
  store i32 %13, i32* @spectrum_palette, align 4
  %14 = load i32, i32* @spectrum_palette_color_size, align 4
  store i32 %14, i32* @spectrum_palette_size, align 4
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 @fileno(i32 %15)
  %17 = call i32 @isatty(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = call i32* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @OUTPUT_RAW, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 20), align 8
  br label %26

24:                                               ; preds = %19, %2
  %25 = load i32, i32* @OUTPUT_STANDARD, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 20), align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = call i8* @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 18), align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 @parseOptions(i32 %28, i8** %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  store i8** %37, i8*** %5, align 8
  %38 = call i32 (...) @parseEnv()
  %39 = call i64 (...) @CLUSTER_MANAGER_MODE()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %26
  %42 = call i32* (...) @validateClusterManagerCommand()
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 19), align 8
  %47 = call i32 @sdsfree(i8* %46)
  %48 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 18), align 8
  %49 = call i32 @sdsfree(i8* %48)
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %41
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @clusterManagerMode(i32* %52)
  br label %54

54:                                               ; preds = %51, %26
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 17), align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = call i64 @cliConnect(i32 0)
  %59 = load i64, i64* @REDIS_ERR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %57
  %64 = call i32 (...) @latencyMode()
  br label %65

65:                                               ; preds = %63, %54
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 16), align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = call i64 @cliConnect(i32 0)
  %70 = load i64, i64* @REDIS_ERR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 @exit(i32 1) #3
  unreachable

74:                                               ; preds = %68
  %75 = call i32 (...) @latencyDistMode()
  br label %76

76:                                               ; preds = %74, %65
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 15), align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = call i64 @cliConnect(i32 0)
  %81 = load i64, i64* @REDIS_ERR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 @exit(i32 1) #3
  unreachable

85:                                               ; preds = %79
  %86 = call i32 (...) @sendCapa()
  %87 = call i32 (...) @slaveMode()
  br label %88

88:                                               ; preds = %85, %76
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 14), align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = call i64 @cliConnect(i32 0)
  %93 = load i64, i64* @REDIS_ERR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 @exit(i32 1) #3
  unreachable

97:                                               ; preds = %91
  %98 = call i32 (...) @sendCapa()
  %99 = call i32 @getRDB(i32* null)
  br label %100

100:                                              ; preds = %97, %88
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 13), align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = call i64 @cliConnect(i32 0)
  %105 = load i64, i64* @REDIS_ERR, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = call i32 @exit(i32 1) #3
  unreachable

109:                                              ; preds = %103
  %110 = call i32 (...) @pipeMode()
  br label %111

111:                                              ; preds = %109, %100
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 12), align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = call i64 @cliConnect(i32 0)
  %116 = load i64, i64* @REDIS_ERR, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = call i32 @exit(i32 1) #3
  unreachable

120:                                              ; preds = %114
  %121 = call i32 @findBigKeys(i32 0, i32 0)
  br label %122

122:                                              ; preds = %120, %111
  %123 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 11), align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = call i64 @cliConnect(i32 0)
  %127 = load i64, i64* @REDIS_ERR, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call i32 @exit(i32 1) #3
  unreachable

131:                                              ; preds = %125
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 10), align 8
  %133 = call i32 @findBigKeys(i32 1, i32 %132)
  br label %134

134:                                              ; preds = %131, %122
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 9), align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = call i64 @cliConnect(i32 0)
  %139 = load i64, i64* @REDIS_ERR, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = call i32 @exit(i32 1) #3
  unreachable

143:                                              ; preds = %137
  %144 = call i32 (...) @findHotKeys()
  br label %145

145:                                              ; preds = %143, %134
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 8), align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %145
  %149 = call i64 @cliConnect(i32 0)
  %150 = load i64, i64* @REDIS_ERR, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = call i32 @exit(i32 1) #3
  unreachable

154:                                              ; preds = %148
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 2), align 8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 1000000, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 2), align 8
  br label %158

158:                                              ; preds = %157, %154
  %159 = call i32 (...) @statMode()
  br label %160

160:                                              ; preds = %158, %145
  %161 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 7), align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = call i64 @cliConnect(i32 0)
  %165 = load i64, i64* @REDIS_ERR, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = call i32 @exit(i32 1) #3
  unreachable

169:                                              ; preds = %163
  %170 = call i32 (...) @scanMode()
  br label %171

171:                                              ; preds = %169, %160
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 6), align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = call i64 @cliConnect(i32 0)
  %176 = load i64, i64* @REDIS_ERR, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = call i32 @exit(i32 1) #3
  unreachable

180:                                              ; preds = %174
  %181 = call i32 (...) @LRUTestMode()
  br label %182

182:                                              ; preds = %180, %171
  %183 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 5), align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = call i32 (...) @intrinsicLatencyMode()
  br label %187

187:                                              ; preds = %185, %182
  %188 = load i32, i32* %4, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 4), align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %199, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* @SIGPIPE, align 4
  %195 = load i32, i32* @SIG_IGN, align 4
  %196 = call i32 @signal(i32 %194, i32 %195)
  %197 = call i64 @cliConnect(i32 0)
  %198 = call i32 (...) @repl()
  br label %199

199:                                              ; preds = %193, %190, %187
  %200 = call i64 @cliConnect(i32 0)
  %201 = load i64, i64* @REDIS_OK, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = call i32 @exit(i32 1) #3
  unreachable

205:                                              ; preds = %199
  %206 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 4), align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load i32, i32* %4, align 4
  %210 = load i8**, i8*** %5, align 8
  %211 = call i32 @evalMode(i32 %209, i8** %210)
  store i32 %211, i32* %3, align 4
  br label %218

212:                                              ; preds = %205
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* %4, align 4
  %215 = load i8**, i8*** %5, align 8
  %216 = call i32 @convertToSds(i32 %214, i8** %215)
  %217 = call i32 @noninteractive(i32 %213, i32 %216)
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %212, %208
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @parseOptions(i32, i8**) #1

declare dso_local i32 @parseEnv(...) #1

declare dso_local i64 @CLUSTER_MANAGER_MODE(...) #1

declare dso_local i32* @validateClusterManagerCommand(...) #1

declare dso_local i32 @sdsfree(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @clusterManagerMode(i32*) #1

declare dso_local i64 @cliConnect(i32) #1

declare dso_local i32 @latencyMode(...) #1

declare dso_local i32 @latencyDistMode(...) #1

declare dso_local i32 @sendCapa(...) #1

declare dso_local i32 @slaveMode(...) #1

declare dso_local i32 @getRDB(i32*) #1

declare dso_local i32 @pipeMode(...) #1

declare dso_local i32 @findBigKeys(i32, i32) #1

declare dso_local i32 @findHotKeys(...) #1

declare dso_local i32 @statMode(...) #1

declare dso_local i32 @scanMode(...) #1

declare dso_local i32 @LRUTestMode(...) #1

declare dso_local i32 @intrinsicLatencyMode(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @repl(...) #1

declare dso_local i32 @evalMode(i32, i8**) #1

declare dso_local i32 @noninteractive(i32, i32) #1

declare dso_local i32 @convertToSds(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
