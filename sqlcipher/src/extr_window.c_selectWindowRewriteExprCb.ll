; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_window.c_selectWindowRewriteExprCb.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_window.c_selectWindowRewriteExprCb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_28__*, %struct.TYPE_22__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_22__ = type { %struct.WindowRewrite* }
%struct.WindowRewrite = type { %struct.TYPE_26__*, %struct.TYPE_30__*, %struct.TYPE_24__*, i64 }
%struct.TYPE_26__ = type { i64, %struct.TYPE_29__*, %struct.TYPE_26__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_29__ = type { i32, i64, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_26__* }

@WRC_Continue = common dso_local global i32 0, align 4
@EP_WinFunc = common dso_local global i32 0, align 4
@WRC_Prune = common dso_local global i32 0, align 4
@EP_Static = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_29__*)* @selectWindowRewriteExprCb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selectWindowRewriteExprCb(%struct.TYPE_27__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.WindowRewrite*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load %struct.WindowRewrite*, %struct.WindowRewrite** %14, align 8
  store %struct.WindowRewrite* %15, %struct.WindowRewrite** %6, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  store %struct.TYPE_28__* %18, %struct.TYPE_28__** %7, align 8
  %19 = load %struct.WindowRewrite*, %struct.WindowRewrite** %6, align 8
  %20 = getelementptr inbounds %struct.WindowRewrite, %struct.WindowRewrite* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %2
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 129
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @WRC_Continue, align 4
  store i32 %29, i32* %3, align 4
  br label %167

30:                                               ; preds = %23
  %31 = load %struct.WindowRewrite*, %struct.WindowRewrite** %6, align 8
  %32 = getelementptr inbounds %struct.WindowRewrite, %struct.WindowRewrite* %31, i32 0, i32 2
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %57, %30
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.WindowRewrite*, %struct.WindowRewrite** %6, align 8
  %45 = getelementptr inbounds %struct.WindowRewrite, %struct.WindowRewrite* %44, i32 0, i32 2
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %43, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %60

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %36

60:                                               ; preds = %55, %36
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @WRC_Continue, align 4
  store i32 %65, i32* %3, align 4
  br label %167

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %2
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %164 [
    i32 128, label %72
    i32 130, label %108
    i32 129, label %108
  ]

72:                                               ; preds = %68
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %74 = load i32, i32* @EP_WinFunc, align 4
  %75 = call i32 @ExprHasProperty(%struct.TYPE_29__* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %165

78:                                               ; preds = %72
  %79 = load %struct.WindowRewrite*, %struct.WindowRewrite** %6, align 8
  %80 = getelementptr inbounds %struct.WindowRewrite, %struct.WindowRewrite* %79, i32 0, i32 0
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %80, align 8
  store %struct.TYPE_26__* %81, %struct.TYPE_26__** %10, align 8
  br label %82

82:                                               ; preds = %102, %78
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %84 = icmp ne %struct.TYPE_26__* %83, null
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %88, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %91 = icmp eq %struct.TYPE_26__* %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %94, align 8
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %97 = icmp eq %struct.TYPE_29__* %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32, i32* @WRC_Prune, align 4
  store i32 %100, i32* %3, align 4
  br label %167

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %104, align 8
  store %struct.TYPE_26__* %105, %struct.TYPE_26__** %10, align 8
  br label %82

106:                                              ; preds = %82
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %68, %68, %107
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %113 = call %struct.TYPE_29__* @sqlite3ExprDup(i32 %111, %struct.TYPE_29__* %112, i32 0)
  store %struct.TYPE_29__* %113, %struct.TYPE_29__** %11, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %115 = load %struct.WindowRewrite*, %struct.WindowRewrite** %6, align 8
  %116 = getelementptr inbounds %struct.WindowRewrite, %struct.WindowRewrite* %115, i32 0, i32 1
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %116, align 8
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %119 = call %struct.TYPE_30__* @sqlite3ExprListAppend(%struct.TYPE_28__* %114, %struct.TYPE_30__* %117, %struct.TYPE_29__* %118)
  %120 = load %struct.WindowRewrite*, %struct.WindowRewrite** %6, align 8
  %121 = getelementptr inbounds %struct.WindowRewrite, %struct.WindowRewrite* %120, i32 0, i32 1
  store %struct.TYPE_30__* %119, %struct.TYPE_30__** %121, align 8
  %122 = load %struct.WindowRewrite*, %struct.WindowRewrite** %6, align 8
  %123 = getelementptr inbounds %struct.WindowRewrite, %struct.WindowRewrite* %122, i32 0, i32 1
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %123, align 8
  %125 = icmp ne %struct.TYPE_30__* %124, null
  br i1 %125, label %126, label %163

126:                                              ; preds = %108
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %128 = load i32, i32* @EP_Static, align 4
  %129 = call i32 @ExprHasProperty(%struct.TYPE_29__* %127, i32 %128)
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %134 = load i32, i32* @EP_Static, align 4
  %135 = call i32 @ExprSetProperty(%struct.TYPE_29__* %133, i32 %134)
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %140 = call i32 @sqlite3ExprDelete(i32 %138, %struct.TYPE_29__* %139)
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %142 = load i32, i32* @EP_Static, align 4
  %143 = call i32 @ExprClearProperty(%struct.TYPE_29__* %141, i32 %142)
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %145 = call i32 @memset(%struct.TYPE_29__* %144, i32 0, i32 32)
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 0
  store i32 129, i32* %147, align 8
  %148 = load %struct.WindowRewrite*, %struct.WindowRewrite** %6, align 8
  %149 = getelementptr inbounds %struct.WindowRewrite, %struct.WindowRewrite* %148, i32 0, i32 1
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 1
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  %156 = load %struct.WindowRewrite*, %struct.WindowRewrite** %6, align 8
  %157 = getelementptr inbounds %struct.WindowRewrite, %struct.WindowRewrite* %156, i32 0, i32 0
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %126, %108
  br label %165

164:                                              ; preds = %68
  br label %165

165:                                              ; preds = %164, %163, %77
  %166 = load i32, i32* @WRC_Continue, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %165, %92, %64, %28
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @ExprHasProperty(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_29__* @sqlite3ExprDup(i32, %struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_30__* @sqlite3ExprListAppend(%struct.TYPE_28__*, %struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ExprSetProperty(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(i32, %struct.TYPE_29__*) #1

declare dso_local i32 @ExprClearProperty(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
