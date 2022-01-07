; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_jmp_patchtestreg.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_jmp_patchtestreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@BC_ISTC = common dso_local global i64 0, align 8
@BC_ISFC = common dso_local global i64 0, align 8
@NO_REG = common dso_local global i64 0, align 8
@BC_IST = common dso_local global i64 0, align 8
@BC_JMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i64)* @jmp_patchtestreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmp_patchtestreg(%struct.TYPE_4__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 1
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %17, %15 ], [ %19, %18 ]
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %22
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %8, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @bc_op(i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @BC_ISTC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %20
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @BC_ISFC, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %31, %20
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @NO_REG, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @bc_d(i32 %43)
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @setbc_a(i32* %48, i64 %49)
  br label %63

51:                                               ; preds = %39, %35
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @BC_IST, align 8
  %56 = load i64, i64* @BC_ISTC, align 8
  %57 = sub nsw i64 %55, %56
  %58 = add nsw i64 %54, %57
  %59 = call i32 @setbc_op(i32* %53, i64 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i32 @setbc_a(i32* %61, i64 0)
  br label %63

63:                                               ; preds = %51, %46
  br label %112

64:                                               ; preds = %31
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @bc_a(i32 %67)
  %69 = load i64, i64* @NO_REG, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %110

71:                                               ; preds = %64
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @NO_REG, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load i32, i32* @BC_JMP, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @bc_a(i32 %84)
  %86 = call i32 @BCINS_AJ(i32 %76, i64 %85, i32 0)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %109

89:                                               ; preds = %71
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @setbc_a(i32* %91, i64 %92)
  %94 = load i64, i64* %7, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @bc_a(i32 %98)
  %100 = icmp sge i64 %94, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %89
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %7, align 8
  %106 = add nsw i64 %105, 1
  %107 = call i32 @setbc_a(i32* %104, i64 %106)
  br label %108

108:                                              ; preds = %101, %89
  br label %109

109:                                              ; preds = %108, %75
  br label %111

110:                                              ; preds = %64
  store i32 0, i32* %4, align 4
  br label %113

111:                                              ; preds = %109
  br label %112

112:                                              ; preds = %111, %63
  store i32 1, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %110
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @bc_op(i32) #1

declare dso_local i64 @bc_d(i32) #1

declare dso_local i32 @setbc_a(i32*, i64) #1

declare dso_local i32 @setbc_op(i32*, i64) #1

declare dso_local i64 @bc_a(i32) #1

declare dso_local i32 @BCINS_AJ(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
