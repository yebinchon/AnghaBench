; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_access_module.c_ngx_http_access_rule.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_access_module.c_ngx_http_access_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i8* }
%struct.TYPE_28__ = type { i32*, i32*, i32* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"low address bits of %V are meaningless\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@AF_UNIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*, i32*, i8*)* @ngx_http_access_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_access_rule(%struct.TYPE_18__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %15, %struct.TYPE_28__** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = call i32 @ngx_memzero(%struct.TYPE_19__* %12, i32 24)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  store %struct.TYPE_24__* %21, %struct.TYPE_24__** %11, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i64 1
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @ngx_strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %10, align 4
  br label %60

35:                                               ; preds = %27, %3
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i64 1
  %38 = call i64 @ngx_ptocidr(%struct.TYPE_24__* %37, %struct.TYPE_19__* %12)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @NGX_ERROR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32, i32* @NGX_LOG_EMERG, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i64 1
  %47 = call i32 @ngx_conf_log_error(i32 %43, %struct.TYPE_18__* %44, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_24__* %46)
  %48 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %48, i8** %4, align 8
  br label %125

49:                                               ; preds = %35
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @NGX_DONE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* @NGX_LOG_WARN, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i64 1
  %58 = call i32 @ngx_conf_log_error(i32 %54, %struct.TYPE_18__* %55, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_24__* %57)
  br label %59

59:                                               ; preds = %53, %49
  br label %60

60:                                               ; preds = %59, %34
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AF_INET, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %123

68:                                               ; preds = %65, %60
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @ngx_array_create(i32 %76, i32 4, i32 12)
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 2
  store i32* %78, i32** %80, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %86, i8** %4, align 8
  br label %125

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %68
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i8* @ngx_array_push(i32* %91)
  %93 = bitcast i8* %92 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %93, %struct.TYPE_26__** %13, align 8
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %95 = icmp eq %struct.TYPE_26__* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %97, i8** %4, align 8
  br label %125

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 100
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 1, i32 0
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %98, %65
  %124 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %124, i8** %4, align 8
  br label %125

125:                                              ; preds = %123, %96, %85, %42
  %126 = load i8*, i8** %4, align 8
  ret i8* %126
}

declare dso_local i32 @ngx_memzero(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

declare dso_local i64 @ngx_ptocidr(%struct.TYPE_24__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_18__*, i32, i8*, %struct.TYPE_24__*) #1

declare dso_local i8* @ngx_array_create(i32, i32, i32) #1

declare dso_local i8* @ngx_array_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
