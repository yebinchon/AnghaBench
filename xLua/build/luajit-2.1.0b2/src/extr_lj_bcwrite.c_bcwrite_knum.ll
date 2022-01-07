; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_bcwrite.c_bcwrite_knum.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_bcwrite.c_bcwrite_knum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@TValue = common dso_local global i32 0, align 4
@LJ_DUALNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*)* @bcwrite_knum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcwrite_knum(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TValue, align 4
  %18 = call %struct.TYPE_12__* @mref(i32 %16, i32 %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %7, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 10, %21
  %23 = call i8* @lj_buf_more(i32* %20, i32 %22)
  store i8* %23, i8** %8, align 8
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %117, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %122

28:                                               ; preds = %24
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = call i64 @tvisint(%struct.TYPE_12__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = call i32 @intV(%struct.TYPE_12__* %33)
  store i32 %34, i32* %9, align 4
  br label %48

35:                                               ; preds = %28
  %36 = load i32, i32* @LJ_DUALNUM, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %73, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = call i64 @numV(%struct.TYPE_12__* %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @lj_num2int(i64 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i64, i64* %10, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 2, %50
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, -2147483648
  %54 = or i32 %51, %53
  %55 = call i8* @lj_strfmt_wuleb128(i8* %49, i32 %54)
  store i8* %55, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %48
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 -1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = and i32 %62, 7
  %64 = load i32, i32* %9, align 4
  %65 = ashr i32 %64, 27
  %66 = and i32 %65, 24
  %67 = or i32 %63, %66
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 -1
  store i8 %68, i8* %70, align 1
  br label %71

71:                                               ; preds = %58, %48
  br label %117

72:                                               ; preds = %38
  br label %73

73:                                               ; preds = %72, %35
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 2, %78
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, -2147483648
  %85 = or i32 %79, %84
  %86 = add i32 1, %85
  %87 = call i8* @lj_strfmt_wuleb128(i8* %74, i32 %86)
  store i8* %87, i8** %8, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp uge i32 %91, -2147483648
  br i1 %92, label %93, label %109

93:                                               ; preds = %73
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 -1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = and i32 %97, 7
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 27
  %104 = and i32 %103, 24
  %105 = or i32 %98, %104
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 -1
  store i8 %106, i8* %108, align 1
  br label %109

109:                                              ; preds = %93, %73
  %110 = load i8*, i8** %8, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @lj_strfmt_wuleb128(i8* %110, i32 %114)
  store i8* %115, i8** %8, align 8
  br label %116

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %71
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 1
  store %struct.TYPE_12__* %121, %struct.TYPE_12__** %7, align 8
  br label %24

122:                                              ; preds = %24
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 @setsbufP(i32* %124, i8* %125)
  ret void
}

declare dso_local %struct.TYPE_12__* @mref(i32, i32) #1

declare dso_local i8* @lj_buf_more(i32*, i32) #1

declare dso_local i64 @tvisint(%struct.TYPE_12__*) #1

declare dso_local i32 @intV(%struct.TYPE_12__*) #1

declare dso_local i64 @numV(%struct.TYPE_12__*) #1

declare dso_local i32 @lj_num2int(i64) #1

declare dso_local i8* @lj_strfmt_wuleb128(i8*, i32) #1

declare dso_local i32 @setsbufP(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
