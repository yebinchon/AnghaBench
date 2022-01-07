; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_expr_toreg.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_expr_toreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, i8*, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_18__, i8*, i8* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@VJMP = common dso_local global i64 0, align 8
@NO_JMP = common dso_local global i8* null, align 8
@BC_KPRI = common dso_local global i32 0, align 4
@VKFALSE = common dso_local global i32 0, align 4
@BC_JMP = common dso_local global i32 0, align 4
@VKTRUE = common dso_local global i32 0, align 4
@VNONRELOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_20__*, i32)* @expr_toreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr_toreg(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @expr_toreg_nobranch(%struct.TYPE_19__* %11, %struct.TYPE_20__* %12, i32 %13)
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VJMP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @jmp_append(%struct.TYPE_19__* %21, i8** %23, i32 %28)
  br label %30

30:                                               ; preds = %20, %3
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = call i64 @expr_hasjump(%struct.TYPE_20__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %105

34:                                               ; preds = %30
  %35 = load i8*, i8** @NO_JMP, align 8
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** @NO_JMP, align 8
  store i8* %36, i8** %9, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @jmp_novalue(%struct.TYPE_19__* %37, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @jmp_novalue(%struct.TYPE_19__* %44, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %43, %34
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VJMP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i8*, i8** @NO_JMP, align 8
  br label %61

58:                                               ; preds = %50
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %60 = call i8* @bcemit_jmp(%struct.TYPE_19__* %59)
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi i8* [ %57, %56 ], [ %60, %58 ]
  store i8* %62, i8** %10, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = load i32, i32* @BC_KPRI, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @VKFALSE, align 4
  %67 = call i8* @bcemit_AD(%struct.TYPE_19__* %63, i32 %64, i32 %65, i32 %66)
  store i8* %67, i8** %8, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = load i32, i32* @BC_JMP, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bcemit_AJ(%struct.TYPE_19__* %68, i32 %69, i32 %72, i32 1)
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %75 = load i32, i32* @BC_KPRI, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @VKTRUE, align 4
  %78 = call i8* @bcemit_AD(%struct.TYPE_19__* %74, i32 %75, i32 %76, i32 %77)
  store i8* %78, i8** %9, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @jmp_tohere(%struct.TYPE_19__* %79, i8* %80)
  br label %82

82:                                               ; preds = %61, %43
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %7, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @jmp_patchval(%struct.TYPE_19__* %89, i8* %92, i8* %93, i32 %94, i8* %95)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @jmp_patchval(%struct.TYPE_19__* %97, i8* %100, i8* %101, i32 %102, i8* %103)
  br label %105

105:                                              ; preds = %82, %30
  %106 = load i8*, i8** @NO_JMP, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 3
  store i8* %106, i8** %110, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  store i32 %111, i32* %115, align 8
  %116 = load i64, i64* @VNONRELOC, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  ret void
}

declare dso_local i32 @expr_toreg_nobranch(%struct.TYPE_19__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @jmp_append(%struct.TYPE_19__*, i8**, i32) #1

declare dso_local i64 @expr_hasjump(%struct.TYPE_20__*) #1

declare dso_local i64 @jmp_novalue(%struct.TYPE_19__*, i8*) #1

declare dso_local i8* @bcemit_jmp(%struct.TYPE_19__*) #1

declare dso_local i8* @bcemit_AD(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @bcemit_AJ(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @jmp_tohere(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @jmp_patchval(%struct.TYPE_19__*, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
