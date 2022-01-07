; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_rec_loop_interp.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_rec_loop_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i32, i64, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@LOOPEV_LEAVE = common dso_local global i64 0, align 8
@LJ_TRERR_LLEAVE = common dso_local global i32 0, align 4
@LJ_TRLINK_LOOP = common dso_local global i32 0, align 4
@LJ_TRERR_LINNER = common dso_local global i32 0, align 4
@LOOPEV_ENTERLO = common dso_local global i64 0, align 8
@LJ_TRERR_LUNROLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i64)* @rec_loop_interp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_loop_interp(%struct.TYPE_8__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %103

11:                                               ; preds = %3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %103

16:                                               ; preds = %11
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 7
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %17, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %22
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @LOOPEV_LEAVE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = load i32, i32* @LJ_TRERR_LLEAVE, align 4
  %38 = call i32 @lj_trace_err(%struct.TYPE_8__* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = load i32, i32* @LJ_TRLINK_LOOP, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @lj_record_stop(%struct.TYPE_8__* %40, i32 %41, i32 %45)
  br label %102

47:                                               ; preds = %22, %16
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @LOOPEV_LEAVE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %101

51:                                               ; preds = %47
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @bc_j(i32 %53)
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @innerloopleft(%struct.TYPE_8__* %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = load i32, i32* @LJ_TRERR_LINNER, align 4
  %64 = call i32 @lj_trace_err(%struct.TYPE_8__* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %56, %51
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @LOOPEV_ENTERLO, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %78, %81
  %83 = icmp sgt i32 %82, 24
  br i1 %83, label %90, label %84

84:                                               ; preds = %74, %69, %65
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %86, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84, %74
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = load i32, i32* @LJ_TRERR_LUNROLL, align 4
  %93 = call i32 @lj_trace_err(%struct.TYPE_8__* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %84
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %94, %47
  br label %102

102:                                              ; preds = %101, %39
  br label %125

103:                                              ; preds = %11, %3
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* @LOOPEV_LEAVE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, -1
  store i64 %117, i64* %115, align 8
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %107
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %121 = load i32, i32* @LJ_TRERR_LUNROLL, align 4
  %122 = call i32 @lj_trace_err(%struct.TYPE_8__* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %107
  br label %124

124:                                              ; preds = %123, %103
  br label %125

125:                                              ; preds = %124, %102
  ret void
}

declare dso_local i32 @lj_trace_err(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lj_record_stop(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @bc_j(i32) #1

declare dso_local i32 @innerloopleft(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
