; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_dispatch.c_lj_dispatch_init.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_dispatch.c_lj_dispatch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8**, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i8*, i8* }

@GG_LEN_SDISP = common dso_local global i64 0, align 8
@lj_bc_ofs = common dso_local global i32* null, align 8
@GG_LEN_DDISP = common dso_local global i64 0, align 8
@BC_IFORL = common dso_local global i64 0, align 8
@BC_FORL = common dso_local global i64 0, align 8
@BC_IITERL = common dso_local global i64 0, align 8
@BC_ITERL = common dso_local global i64 0, align 8
@BC_ILOOP = common dso_local global i64 0, align 8
@BC_LOOP = common dso_local global i64 0, align 8
@BC_IFUNCF = common dso_local global i64 0, align 8
@BC_FUNCF = common dso_local global i64 0, align 8
@BC_IFUNCV = common dso_local global i64 0, align 8
@BC_FUNCV = common dso_local global i64 0, align 8
@BC_FUNCC = common dso_local global i64 0, align 8
@LUA_MINSTACK = common dso_local global i32 0, align 4
@GG_NUM_ASMFF = common dso_local global i64 0, align 8
@BC__MAX = common dso_local global i64 0, align 8
@LJ_GOT__MAX = common dso_local global i32 0, align 4
@dispatch_got = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_dispatch_init(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @GG_LEN_SDISP, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = load i32*, i32** @lj_bc_ofs, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @makeasmfunc(i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %17, i32* %20, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i64, i64* @GG_LEN_DDISP, align 8
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %22, %23
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %17, i32* %25, align 4
  br label %26

26:                                               ; preds = %12
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %3, align 8
  br label %8

29:                                               ; preds = %8
  %30 = load i64, i64* @GG_LEN_SDISP, align 8
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %44, %29
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @GG_LEN_DDISP, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i32*, i32** @lj_bc_ofs, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @makeasmfunc(i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %35
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %3, align 8
  br label %31

47:                                               ; preds = %31
  %48 = load i32*, i32** %4, align 8
  %49 = load i64, i64* @BC_IFORL, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i64, i64* @BC_FORL, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %51, i32* %54, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* @BC_IITERL, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i64, i64* @BC_ITERL, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %58, i32* %61, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = load i64, i64* @BC_ILOOP, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i64, i64* @BC_LOOP, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %65, i32* %68, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = load i64, i64* @BC_IFUNCF, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = load i64, i64* @BC_FUNCF, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %72, i32* %75, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = load i64, i64* @BC_IFUNCV, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load i64, i64* @BC_FUNCV, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 %79, i32* %82, align 4
  %83 = load i64, i64* @BC_FUNCC, align 8
  %84 = load i32, i32* @LUA_MINSTACK, align 4
  %85 = call i8* @BCINS_AD(i64 %83, i32 %84, i32 0)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i8* %85, i8** %91, align 8
  store i64 0, i64* %3, align 8
  br label %92

92:                                               ; preds = %106, %47
  %93 = load i64, i64* %3, align 8
  %94 = load i64, i64* @GG_NUM_ASMFF, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = load i64, i64* @BC__MAX, align 8
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %97, %98
  %100 = call i8* @BCINS_AD(i64 %99, i32 0, i32 0)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i8**, i8*** %102, align 8
  %104 = load i64, i64* %3, align 8
  %105 = getelementptr inbounds i8*, i8** %103, i64 %104
  store i8* %100, i8** %105, align 8
  br label %106

106:                                              ; preds = %96
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %3, align 8
  br label %92

109:                                              ; preds = %92
  ret void
}

declare dso_local i32 @makeasmfunc(i32) #1

declare dso_local i8* @BCINS_AD(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
