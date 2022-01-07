; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_bcemit_branch.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_bcemit_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@VRELOCABLE = common dso_local global i64 0, align 8
@BC_NOT = common dso_local global i64 0, align 8
@BC_ISF = common dso_local global i32 0, align 4
@BC_IST = common dso_local global i32 0, align 4
@VNONRELOC = common dso_local global i64 0, align 8
@BC_ISTC = common dso_local global i32 0, align 4
@BC_ISFC = common dso_local global i32 0, align 4
@NO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*, i32)* @bcemit_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcemit_branch(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VRELOCABLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %3
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %18 = call i32* @bcptr(%struct.TYPE_18__* %16, %struct.TYPE_19__* %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @bc_op(i32 %20)
  %22 = load i64, i64* @BC_NOT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @BC_ISF, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @BC_IST, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bc_d(i32 %34)
  %36 = call i32 @BCINS_AD(i32 %32, i32 0, i32 %35)
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = call i32 @bcemit_jmp(%struct.TYPE_18__* %38)
  store i32 %39, i32* %4, align 4
  br label %80

40:                                               ; preds = %15
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VNONRELOC, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %49 = call i32 @bcreg_reserve(%struct.TYPE_18__* %48, i32 1)
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, 1
  %56 = call i32 @expr_toreg_nobranch(%struct.TYPE_18__* %50, %struct.TYPE_19__* %51, i64 %55)
  br label %57

57:                                               ; preds = %47, %41
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @BC_ISTC, align 4
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @BC_ISFC, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load i32, i32* @NO_REG, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bcemit_AD(%struct.TYPE_18__* %58, i32 %66, i32 %67, i32 %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = call i32 @bcemit_jmp(%struct.TYPE_18__* %74)
  store i32 %75, i32* %8, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %78 = call i32 @expr_free(%struct.TYPE_18__* %76, %struct.TYPE_19__* %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %65, %31
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32* @bcptr(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i64 @bc_op(i32) #1

declare dso_local i32 @BCINS_AD(i32, i32, i32) #1

declare dso_local i32 @bc_d(i32) #1

declare dso_local i32 @bcemit_jmp(%struct.TYPE_18__*) #1

declare dso_local i32 @bcreg_reserve(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @expr_toreg_nobranch(%struct.TYPE_18__*, %struct.TYPE_19__*, i64) #1

declare dso_local i32 @bcemit_AD(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @expr_free(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
