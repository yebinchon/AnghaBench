; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_validate_pool.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_validate_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32 }
%struct.conf_pool = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"conf: directive \22listen:\22 is missing\00", align 1
@NC_ERROR = common dso_local global i64 0, align 8
@CONF_UNSET_DIST = common dso_local global i64 0, align 8
@CONF_DEFAULT_DIST = common dso_local global i64 0, align 8
@CONF_UNSET_HASH = common dso_local global i64 0, align 8
@CONF_DEFAULT_HASH = common dso_local global i64 0, align 8
@CONF_UNSET_NUM = common dso_local global i64 0, align 8
@CONF_DEFAULT_TIMEOUT = common dso_local global i64 0, align 8
@CONF_DEFAULT_LISTEN_BACKLOG = common dso_local global i64 0, align 8
@CONF_DEFAULT_CLIENT_CONNECTIONS = common dso_local global i32 0, align 4
@CONF_DEFAULT_REDIS = common dso_local global i64 0, align 8
@CONF_DEFAULT_TCPKEEPALIVE = common dso_local global i64 0, align 8
@CONF_DEFAULT_REDIS_DB = common dso_local global i64 0, align 8
@CONF_DEFAULT_PRECONNECT = common dso_local global i64 0, align 8
@CONF_DEFAULT_AUTO_EJECT_HOSTS = common dso_local global i64 0, align 8
@CONF_DEFAULT_SERVER_CONNECTIONS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"conf: directive \22server_connections:\22 cannot be 0\00", align 1
@CONF_DEFAULT_SERVER_RETRY_TIMEOUT = common dso_local global i64 0, align 8
@CONF_DEFAULT_SERVER_FAILURE_LIMIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"conf: directive \22redis_auth:\22 is only valid for a redis pool\00", align 1
@NC_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.conf*, %struct.conf_pool*)* @conf_validate_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @conf_validate_pool(%struct.conf* %0, %struct.conf_pool* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.conf*, align 8
  %5 = alloca %struct.conf_pool*, align 8
  %6 = alloca i64, align 8
  store %struct.conf* %0, %struct.conf** %4, align 8
  store %struct.conf_pool* %1, %struct.conf_pool** %5, align 8
  %7 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %8 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %15 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %14, i32 0, i32 16
  %16 = call i32 @string_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %22 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %21, i32 0, i32 15
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = call i32 @log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @NC_ERROR, align 8
  store i64 %28, i64* %3, align 8
  br label %188

29:                                               ; preds = %2
  %30 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %31 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CONF_UNSET_DIST, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* @CONF_DEFAULT_DIST, align 8
  %37 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %38 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %41 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CONF_UNSET_HASH, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i64, i64* @CONF_DEFAULT_HASH, align 8
  %47 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %48 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %51 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CONF_UNSET_NUM, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i64, i64* @CONF_DEFAULT_TIMEOUT, align 8
  %57 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %58 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %61 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CONF_UNSET_NUM, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i64, i64* @CONF_DEFAULT_LISTEN_BACKLOG, align 8
  %67 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %68 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %67, i32 0, i32 4
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %59
  %70 = load i32, i32* @CONF_DEFAULT_CLIENT_CONNECTIONS, align 4
  %71 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %72 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %71, i32 0, i32 14
  store i32 %70, i32* %72, align 8
  %73 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %74 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CONF_UNSET_NUM, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load i64, i64* @CONF_DEFAULT_REDIS, align 8
  %80 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %81 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %80, i32 0, i32 5
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %69
  %83 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %84 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CONF_UNSET_NUM, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i64, i64* @CONF_DEFAULT_TCPKEEPALIVE, align 8
  %90 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %91 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %90, i32 0, i32 6
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %82
  %93 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %94 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %93, i32 0, i32 7
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CONF_UNSET_NUM, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i64, i64* @CONF_DEFAULT_REDIS_DB, align 8
  %100 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %101 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %100, i32 0, i32 7
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %92
  %103 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %104 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CONF_UNSET_NUM, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i64, i64* @CONF_DEFAULT_PRECONNECT, align 8
  %110 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %111 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %110, i32 0, i32 8
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %102
  %113 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %114 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %113, i32 0, i32 9
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @CONF_UNSET_NUM, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i64, i64* @CONF_DEFAULT_AUTO_EJECT_HOSTS, align 8
  %120 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %121 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %120, i32 0, i32 9
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %118, %112
  %123 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %124 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %123, i32 0, i32 10
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CONF_UNSET_NUM, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i64, i64* @CONF_DEFAULT_SERVER_CONNECTIONS, align 8
  %130 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %131 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %130, i32 0, i32 10
  store i64 %129, i64* %131, align 8
  br label %141

132:                                              ; preds = %122
  %133 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %134 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %133, i32 0, i32 10
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = call i32 @log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %139 = load i64, i64* @NC_ERROR, align 8
  store i64 %139, i64* %3, align 8
  br label %188

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %128
  %142 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %143 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %142, i32 0, i32 11
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @CONF_UNSET_NUM, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load i64, i64* @CONF_DEFAULT_SERVER_RETRY_TIMEOUT, align 8
  %149 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %150 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %149, i32 0, i32 11
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %147, %141
  %152 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %153 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %152, i32 0, i32 12
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @CONF_UNSET_NUM, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load i64, i64* @CONF_DEFAULT_SERVER_FAILURE_LIMIT, align 8
  %159 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %160 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %159, i32 0, i32 12
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %157, %151
  %162 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %163 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %161
  %167 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %168 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %167, i32 0, i32 13
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp sgt i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = call i32 @log_error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %174 = load i64, i64* @NC_ERROR, align 8
  store i64 %174, i64* %3, align 8
  br label %188

175:                                              ; preds = %166, %161
  %176 = load %struct.conf*, %struct.conf** %4, align 8
  %177 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %178 = call i64 @conf_validate_server(%struct.conf* %176, %struct.conf_pool* %177)
  store i64 %178, i64* %6, align 8
  %179 = load i64, i64* %6, align 8
  %180 = load i64, i64* @NC_OK, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %175
  %183 = load i64, i64* %6, align 8
  store i64 %183, i64* %3, align 8
  br label %188

184:                                              ; preds = %175
  %185 = load %struct.conf_pool*, %struct.conf_pool** %5, align 8
  %186 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %185, i32 0, i32 0
  store i32 1, i32* %186, align 8
  %187 = load i64, i64* @NC_OK, align 8
  store i64 %187, i64* %3, align 8
  br label %188

188:                                              ; preds = %184, %182, %172, %137, %26
  %189 = load i64, i64* %3, align 8
  ret i64 %189
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @string_empty(i32*) #1

declare dso_local i32 @log_error(i8*) #1

declare dso_local i64 @conf_validate_server(%struct.conf*, %struct.conf_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
