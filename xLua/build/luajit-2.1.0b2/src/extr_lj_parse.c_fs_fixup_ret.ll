; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_fs_fixup_ret.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_fs_fixup_ret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@FSCOPE_UPVAL = common dso_local global i32 0, align 4
@FSCOPE_NOCLOSE = common dso_local global i32 0, align 4
@PROTO_FIXUP_RETURN = common dso_local global i32 0, align 4
@BCBIAS_J = common dso_local global i32 0, align 4
@BCMAX_D = common dso_local global i32 0, align 4
@LJ_ERR_XFIXUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @fs_fixup_ret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_fixup_ret(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp sle i32 %10, %13
  br i1 %14, label %28, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bc_op(i32 %24)
  %26 = call i32 @bcopisret(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %15, %1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FSCOPE_UPVAL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = call i32 @bcemit_AJ(%struct.TYPE_11__* %38, i32 128, i32 0, i32 0)
  br label %40

40:                                               ; preds = %37, %28
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = call i32 @bcemit_AD(%struct.TYPE_11__* %41, i32 131, i32 0, i32 1)
  br label %43

43:                                               ; preds = %40, %15
  %44 = load i32, i32* @FSCOPE_NOCLOSE, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = call i32 @fscope_end(%struct.TYPE_11__* %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 5
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = icmp eq %struct.TYPE_9__* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @lua_assert(i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PROTO_FIXUP_RETURN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %132

65:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %66

66:                                               ; preds = %128, %65
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %131

70:                                               ; preds = %66
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @bc_op(i32 %79)
  switch i32 %80, label %126 [
    i32 134, label %81
    i32 133, label %81
    i32 129, label %81
    i32 132, label %81
    i32 131, label %81
    i32 130, label %81
    i32 128, label %125
  ]

81:                                               ; preds = %70, %70, %70, %70, %70, %70
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @bcemit_INS(%struct.TYPE_11__* %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  store i32 %92, i32* %99, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  %103 = sub nsw i32 %100, %102
  %104 = load i32, i32* @BCBIAS_J, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @BCMAX_D, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %81
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @LJ_ERR_XFIXUP, align 4
  %114 = call i32 @err_syntax(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %109, %81
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @BCINS_AD(i32 128, i32 0, i32 %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i32 %117, i32* %124, align 4
  br label %127

125:                                              ; preds = %70
  br label %132

126:                                              ; preds = %70
  br label %127

127:                                              ; preds = %126, %115
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %4, align 4
  br label %66

131:                                              ; preds = %66
  br label %132

132:                                              ; preds = %125, %131, %43
  ret void
}

declare dso_local i32 @bcopisret(i32) #1

declare dso_local i32 @bc_op(i32) #1

declare dso_local i32 @bcemit_AJ(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @bcemit_AD(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @fscope_end(%struct.TYPE_11__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @bcemit_INS(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @err_syntax(i32, i32) #1

declare dso_local i32 @BCINS_AD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
