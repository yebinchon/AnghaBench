; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_slice_filter_module.c_ngx_http_slice_get_start.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_slice_filter_module.c_ngx_http_slice_get_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"bytes=\00", align 1
@NGX_MAX_OFF_T_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_9__*)* @ngx_http_slice_get_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @ngx_http_slice_get_start(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8 0, i8* %2, align 1
  br label %114

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %8, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = icmp eq %struct.TYPE_8__* %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %15
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 7
  br i1 %27, label %35, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @ngx_strncasecmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %22, %15
  store i8 0, i8* %2, align 1
  br label %114

36:                                               ; preds = %28
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 6
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @ngx_strchr(i8* %42, i8 signext 44)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i8 0, i8* %2, align 1
  br label %114

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %52, %46
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  br label %47

55:                                               ; preds = %47
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 45
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i8 0, i8* %2, align 1
  br label %114

61:                                               ; preds = %55
  %62 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %63 = sdiv i32 %62, 10
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %5, align 1
  %65 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %66 = srem i32 %65, 10
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %6, align 1
  store i8 0, i8* %4, align 1
  br label %68

68:                                               ; preds = %101, %61
  %69 = load i8*, i8** %7, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sge i32 %71, 48
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i8*, i8** %7, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sle i32 %76, 57
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i1 [ false, %68 ], [ %77, %73 ]
  br i1 %79, label %80, label %112

80:                                               ; preds = %78
  %81 = load i8, i8* %4, align 1
  %82 = sext i8 %81 to i32
  %83 = load i8, i8* %5, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sge i32 %82, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %80
  %87 = load i8, i8* %4, align 1
  %88 = sext i8 %87 to i32
  %89 = load i8, i8* %5, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp sgt i32 %88, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %86
  %93 = load i8*, i8** %7, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = sub nsw i32 %95, 48
  %97 = load i8, i8* %6, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp sgt i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92, %86
  store i8 0, i8* %2, align 1
  br label %114

101:                                              ; preds = %92, %80
  %102 = load i8, i8* %4, align 1
  %103 = sext i8 %102 to i32
  %104 = mul nsw i32 %103, 10
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  %107 = load i8, i8* %105, align 1
  %108 = sext i8 %107 to i32
  %109 = sub nsw i32 %108, 48
  %110 = add nsw i32 %104, %109
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %4, align 1
  br label %68

112:                                              ; preds = %78
  %113 = load i8, i8* %4, align 1
  store i8 %113, i8* %2, align 1
  br label %114

114:                                              ; preds = %112, %100, %60, %45, %35, %14
  %115 = load i8, i8* %2, align 1
  ret i8 %115
}

declare dso_local i64 @ngx_strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @ngx_strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
