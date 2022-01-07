; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_process_flushing_coroutines.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_process_flushing_coroutines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_7__*, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"processing flushing coroutines\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_9__*)* @ngx_http_lua_process_flushing_coroutines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_process_flushing_coroutines(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %11 = call i32 @dd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %10, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %7, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = call i64 @ngx_http_lua_flush_resume_helper(i32* %33, %struct.TYPE_9__* %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @NGX_ERROR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %21
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @NGX_OK, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %21
  %44 = load i64, i64* %6, align 8
  store i64 %44, i64* %3, align 8
  br label %136

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %129

49:                                               ; preds = %46
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = icmp eq %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i64, i64* @NGX_ERROR, align 8
  store i64 %55, i64* %3, align 8
  br label %136

56:                                               ; preds = %49
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %9, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %10, align 8
  store i64 0, i64* %8, align 8
  br label %64

64:                                               ; preds = %125, %56
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp uge i64 %65, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = icmp eq %struct.TYPE_8__* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %128

76:                                               ; preds = %70
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %9, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %10, align 8
  store i64 0, i64* %8, align 8
  br label %83

83:                                               ; preds = %76, %64
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %124

90:                                               ; preds = %83
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, -1
  store i64 %98, i64* %96, align 8
  %99 = load i64, i64* %7, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %7, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i64 %102
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %105, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = call i64 @ngx_http_lua_flush_resume_helper(i32* %106, %struct.TYPE_9__* %107)
  store i64 %108, i64* %6, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @NGX_ERROR, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %90
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* @NGX_OK, align 8
  %115 = icmp sge i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112, %90
  %117 = load i64, i64* %6, align 8
  store i64 %117, i64* %3, align 8
  br label %136

118:                                              ; preds = %112
  %119 = load i64, i64* %7, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i64, i64* @NGX_DONE, align 8
  store i64 %122, i64* %3, align 8
  br label %136

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123, %83
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %8, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %8, align 8
  br label %64

128:                                              ; preds = %75
  br label %129

129:                                              ; preds = %128, %46
  %130 = load i64, i64* %7, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i64, i64* @NGX_ERROR, align 8
  store i64 %133, i64* %3, align 8
  br label %136

134:                                              ; preds = %129
  %135 = load i64, i64* @NGX_DONE, align 8
  store i64 %135, i64* %3, align 8
  br label %136

136:                                              ; preds = %134, %132, %121, %116, %54, %43
  %137 = load i64, i64* %3, align 8
  ret i64 %137
}

declare dso_local i32 @dd(i8*) #1

declare dso_local i64 @ngx_http_lua_flush_resume_helper(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
