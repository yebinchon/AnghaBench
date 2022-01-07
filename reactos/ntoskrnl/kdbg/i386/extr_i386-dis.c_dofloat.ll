; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_dofloat.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_dofloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dis386 = type { i64, i32, i32 (i32, i32)*, i32 (i64, i32)*, i32* }

@codep = common dso_local global i32* null, align 8
@mod = common dso_local global i32 0, align 4
@reg = common dso_local global i8 0, align 1
@float_mem = common dso_local global i32** null, align 8
@op1out = common dso_local global i32 0, align 4
@obufp = common dso_local global i32 0, align 4
@float_mem_mode = common dso_local global i32* null, align 8
@MODRM_CHECK = common dso_local global i32 0, align 4
@float_reg = common dso_local global %struct.dis386** null, align 8
@fgrps = common dso_local global i32*** null, align 8
@rm = common dso_local global i64 0, align 8
@names16 = common dso_local global i32* null, align 8
@op2out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dofloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dofloat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dis386*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32*, i32** @codep, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 -1
  %8 = load i32, i32* %7, align 4
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %4, align 1
  %10 = load i32, i32* @mod, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = sub nsw i32 %14, 216
  %16 = mul nsw i32 %15, 8
  %17 = load i8, i8* @reg, align 1
  %18 = zext i8 %17 to i32
  %19 = add nsw i32 %16, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32**, i32*** @float_mem, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @putop(i32* %24, i32 %25)
  %27 = load i32, i32* @op1out, align 4
  store i32 %27, i32* @obufp, align 4
  %28 = load i32*, i32** @float_mem_mode, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @OP_E(i32 %32, i32 %33)
  br label %116

35:                                               ; preds = %1
  %36 = load i32, i32* @MODRM_CHECK, align 4
  %37 = load i32*, i32** @codep, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** @codep, align 8
  %39 = load %struct.dis386**, %struct.dis386*** @float_reg, align 8
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i32
  %42 = sub nsw i32 %41, 216
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dis386*, %struct.dis386** %39, i64 %43
  %45 = load %struct.dis386*, %struct.dis386** %44, align 8
  %46 = load i8, i8* @reg, align 1
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds %struct.dis386, %struct.dis386* %45, i64 %47
  store %struct.dis386* %48, %struct.dis386** %3, align 8
  %49 = load %struct.dis386*, %struct.dis386** %3, align 8
  %50 = getelementptr inbounds %struct.dis386, %struct.dis386* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %80

53:                                               ; preds = %35
  %54 = load i32***, i32**** @fgrps, align 8
  %55 = load %struct.dis386*, %struct.dis386** %3, align 8
  %56 = getelementptr inbounds %struct.dis386, %struct.dis386* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32**, i32*** %54, i64 %57
  %59 = load i32**, i32*** %58, align 8
  %60 = load i64, i64* @rm, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @putop(i32* %62, i32 %63)
  %65 = load i8, i8* %4, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 223
  br i1 %67, label %68, label %79

68:                                               ; preds = %53
  %69 = load i32*, i32** @codep, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 -1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 224
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* @op1out, align 4
  %75 = load i32*, i32** @names16, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strcpy(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %68, %53
  br label %116

80:                                               ; preds = %35
  %81 = load %struct.dis386*, %struct.dis386** %3, align 8
  %82 = getelementptr inbounds %struct.dis386, %struct.dis386* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @putop(i32* %83, i32 %84)
  %86 = load i32, i32* @op1out, align 4
  store i32 %86, i32* @obufp, align 4
  %87 = load %struct.dis386*, %struct.dis386** %3, align 8
  %88 = getelementptr inbounds %struct.dis386, %struct.dis386* %87, i32 0, i32 3
  %89 = load i32 (i64, i32)*, i32 (i64, i32)** %88, align 8
  %90 = icmp ne i32 (i64, i32)* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %80
  %92 = load %struct.dis386*, %struct.dis386** %3, align 8
  %93 = getelementptr inbounds %struct.dis386, %struct.dis386* %92, i32 0, i32 3
  %94 = load i32 (i64, i32)*, i32 (i64, i32)** %93, align 8
  %95 = load %struct.dis386*, %struct.dis386** %3, align 8
  %96 = getelementptr inbounds %struct.dis386, %struct.dis386* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %2, align 4
  %99 = call i32 %94(i64 %97, i32 %98)
  br label %100

100:                                              ; preds = %91, %80
  %101 = load i32, i32* @op2out, align 4
  store i32 %101, i32* @obufp, align 4
  %102 = load %struct.dis386*, %struct.dis386** %3, align 8
  %103 = getelementptr inbounds %struct.dis386, %struct.dis386* %102, i32 0, i32 2
  %104 = load i32 (i32, i32)*, i32 (i32, i32)** %103, align 8
  %105 = icmp ne i32 (i32, i32)* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load %struct.dis386*, %struct.dis386** %3, align 8
  %108 = getelementptr inbounds %struct.dis386, %struct.dis386* %107, i32 0, i32 2
  %109 = load i32 (i32, i32)*, i32 (i32, i32)** %108, align 8
  %110 = load %struct.dis386*, %struct.dis386** %3, align 8
  %111 = getelementptr inbounds %struct.dis386, %struct.dis386* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %2, align 4
  %114 = call i32 %109(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %106, %100
  br label %116

116:                                              ; preds = %12, %115, %79
  ret void
}

declare dso_local i32 @putop(i32*, i32) #1

declare dso_local i32 @OP_E(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
