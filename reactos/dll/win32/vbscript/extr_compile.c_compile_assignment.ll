; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_assignment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@OP_set_member = common dso_local global i32 0, align 4
@OP_assign_member = common dso_local global i32 0, align 4
@OP_set_ident = common dso_local global i32 0, align 4
@OP_assign_ident = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*, i64)* @compile_assignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_assignment(i32* %0, %struct.TYPE_3__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @compile_expression(i32* %18, i32* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %5, align 4
  br label %87

28:                                               ; preds = %17
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @OP_set_member, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @OP_assign_member, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %11, align 4
  br label %46

37:                                               ; preds = %4
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @OP_set_ident, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @OP_assign_ident, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %44, %35
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @compile_expression(i32* %47, i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @FAILED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %87

55:                                               ; preds = %46
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @compile_args(i32* %56, i32 %59, i32* %10)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @FAILED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %5, align 4
  br label %87

66:                                               ; preds = %55
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @push_instr_bstr_uint(i32* %67, i32 %68, i32 %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i64 @FAILED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %5, align 4
  br label %87

79:                                               ; preds = %66
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @emit_catch(i32* %80, i32 0)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %84, i32* %5, align 4
  br label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @S_OK, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %83, %77, %64, %53, %26
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @compile_expression(i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @compile_args(i32*, i32, i32*) #1

declare dso_local i32 @push_instr_bstr_uint(i32*, i32, i32, i32) #1

declare dso_local i32 @emit_catch(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
