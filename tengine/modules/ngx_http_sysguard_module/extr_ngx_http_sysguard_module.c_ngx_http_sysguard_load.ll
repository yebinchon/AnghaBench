; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_sysguard_module/extr_ngx_http_sysguard_module.c_ngx_http_sysguard_load.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_sysguard_module/extr_ngx_http_sysguard_module.c_ngx_http_sysguard_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"load=\00", align 1
@NGX_CONF_UNSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ncpu*\00", align 1
@ngx_ncpu = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"action=\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_13__*, i32*, i8*)* @ngx_http_sysguard_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_sysguard_load(%struct.TYPE_13__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %8, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %9, align 8
  store i64 1, i64* %10, align 8
  store i64 1, i64* %11, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @ngx_strncmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %171

26:                                               ; preds = %3
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NGX_CONF_UNSET, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %180

33:                                               ; preds = %26
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %172

41:                                               ; preds = %33
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 5
  store i8* %47, i8** %45, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 5
  store i32 %53, i32* %51, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @ngx_strncmp(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %41
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 5
  store i8* %67, i8** %65, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 5
  store i32 %73, i32* %71, align 8
  %74 = load i64, i64* @ngx_ncpu, align 8
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %61, %41
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @ngx_atofp(i8* %80, i32 %85, i32 3)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @NGX_ERROR, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %75
  br label %172

95:                                               ; preds = %75
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = mul i64 %98, %99
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %111

109:                                              ; preds = %95
  %110 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %110, i8** %4, align 8
  br label %180

111:                                              ; preds = %95
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %10, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %115 = load i64, i64* %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @ngx_strncmp(i8* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %172

122:                                              ; preds = %111
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 7
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %172

130:                                              ; preds = %122
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %132 = load i64, i64* %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 7
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 47
  br i1 %139, label %140, label %151

140:                                              ; preds = %130
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 7
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 64
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %172

151:                                              ; preds = %140, %130
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %153 = load i64, i64* %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 7
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  store i8* %157, i8** %160, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %162 = load i64, i64* %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = sub nsw i32 %165, 7
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 8
  %170 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %170, i8** %4, align 8
  br label %180

171:                                              ; preds = %3
  br label %172

172:                                              ; preds = %171, %150, %129, %121, %94, %40
  %173 = load i32, i32* @NGX_LOG_EMERG, align 4
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %176 = load i64, i64* %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i64 %176
  %178 = call i32 @ngx_conf_log_error(i32 %173, %struct.TYPE_13__* %174, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_11__* %177)
  %179 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %179, i8** %4, align 8
  br label %180

180:                                              ; preds = %172, %151, %109, %32
  %181 = load i8*, i8** %4, align 8
  ret i8* %181
}

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local i64 @ngx_atofp(i8*, i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_13__*, i32, i8*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
