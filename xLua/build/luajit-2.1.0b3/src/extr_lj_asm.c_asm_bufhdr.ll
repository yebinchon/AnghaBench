; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_bufhdr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_bufhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32 }

@RSET_GPR = common dso_local global i32 0, align 4
@IRBUFHDR_APPEND = common dso_local global i32 0, align 4
@IR_BUFHDR = common dso_local global i64 0, align 8
@SBuf = common dso_local global i32 0, align 4
@p = common dso_local global i32 0, align 4
@b = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*)* @asm_bufhdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_bufhdr(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = load i32, i32* @RSET_GPR, align 4
  %11 = call i32 @ra_dest(i32* %8, %struct.TYPE_8__* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IRBUFHDR_APPEND, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %84

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_8__* @IR(i32 %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %6, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ra_hasreg(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %83, label %28

28:                                               ; preds = %18
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 -1
  %32 = icmp eq %struct.TYPE_8__* %29, %31
  br i1 %32, label %83, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 -2
  %37 = icmp eq %struct.TYPE_8__* %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 -1
  %41 = call i32 @ra_used(%struct.TYPE_8__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %38, %33
  br label %44

44:                                               ; preds = %61, %43
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IR_BUFHDR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IRBUFHDR_APPEND, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %50, %44
  %59 = phi i1 [ false, %44 ], [ %57, %50 ]
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_8__* @IR(i32 %64)
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %6, align 8
  br label %44

66:                                               ; preds = %58
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @irref_isk(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i32*, i32** %3, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @RSET_GPR, align 4
  %79 = call i32 @ra_allocref(i32* %74, i32 %77, i32 %78)
  %80 = call i32 @ra_weak(i32* %73, i32 %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %4, align 8
  br label %82

82:                                               ; preds = %72, %66
  br label %83

83:                                               ; preds = %82, %38, %28, %18
  br label %106

84:                                               ; preds = %2
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* @RSET_GPR, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @rset_exclude(i32 %86, i32 %87)
  %89 = call i32 @ra_scratch(i32* %85, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32*, i32** %3, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @SBuf, align 4
  %95 = load i32, i32* @p, align 4
  %96 = call i32 @offsetof(i32 %94, i32 %95)
  %97 = call i32 @emit_storeofs(i32* %90, %struct.TYPE_8__* %91, i32 %92, i32 %93, i32 %96)
  %98 = load i32*, i32** %3, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @SBuf, align 4
  %103 = load i32, i32* @b, align 4
  %104 = call i32 @offsetof(i32 %102, i32 %103)
  %105 = call i32 @emit_loadofs(i32* %98, %struct.TYPE_8__* %99, i32 %100, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %84, %83
  %107 = load i32*, i32** %3, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ra_leftov(i32* %107, i32 %108, i32 %111)
  ret void
}

declare dso_local i32 @ra_dest(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_8__* @IR(i32) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @ra_used(%struct.TYPE_8__*) #1

declare dso_local i64 @irref_isk(i32) #1

declare dso_local i32 @ra_weak(i32*, i32) #1

declare dso_local i32 @ra_allocref(i32*, i32, i32) #1

declare dso_local i32 @ra_scratch(i32*, i32) #1

declare dso_local i32 @rset_exclude(i32, i32) #1

declare dso_local i32 @emit_storeofs(i32*, %struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @emit_loadofs(i32*, %struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @ra_leftov(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
