; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_emulate_or.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_emulate_or.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vie = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VM_REG_GUEST_RFLAGS = common dso_local global i32 0, align 4
@RFLAGS_STATUS_BITS = common dso_local global i64 0, align 8
@PSL_PF = common dso_local global i32 0, align 4
@PSL_Z = common dso_local global i32 0, align 4
@PSL_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.vie*, i32 (i8*, i32, i32, i32*, i32, i8*)*, i32 (i8*, i32, i32, i32, i32, i8*)*, i8*)* @emulate_or to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_or(i8* %0, i32 %1, i32 %2, %struct.vie* %3, i32 (i8*, i32, i32, i32*, i32, i8*)* %4, i32 (i8*, i32, i32, i32, i32, i8*)* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vie*, align 8
  %13 = alloca i32 (i8*, i32, i32, i32*, i32, i8*)*, align 8
  %14 = alloca i32 (i8*, i32, i32, i32, i32, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.vie* %3, %struct.vie** %12, align 8
  store i32 (i8*, i32, i32, i32*, i32, i8*)* %4, i32 (i8*, i32, i32, i32*, i32, i8*)** %13, align 8
  store i32 (i8*, i32, i32, i32, i32, i8*)* %5, i32 (i8*, i32, i32, i32, i32, i8*)** %14, align 8
  store i8* %6, i8** %15, align 8
  %22 = load %struct.vie*, %struct.vie** %12, align 8
  %23 = getelementptr inbounds %struct.vie, %struct.vie* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %16, align 4
  %26 = load %struct.vie*, %struct.vie** %12, align 8
  %27 = getelementptr inbounds %struct.vie, %struct.vie* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %56 [
    i32 129, label %30
    i32 131, label %30
  ]

30:                                               ; preds = %7, %7
  %31 = load i32 (i8*, i32, i32, i32*, i32, i8*)*, i32 (i8*, i32, i32, i32*, i32, i8*)** %13, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i8*, i8** %15, align 8
  %37 = call i32 %31(i8* %32, i32 %33, i32 %34, i32* %18, i32 %35, i8* %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %57

41:                                               ; preds = %30
  %42 = load i32, i32* %18, align 4
  %43 = load %struct.vie*, %struct.vie** %12, align 8
  %44 = getelementptr inbounds %struct.vie, %struct.vie* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = or i32 %42, %46
  store i32 %47, i32* %19, align 4
  %48 = load i32 (i8*, i32, i32, i32, i32, i8*)*, i32 (i8*, i32, i32, i32, i32, i8*)** %14, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i8*, i8** %15, align 8
  %55 = call i32 %48(i8* %49, i32 %50, i32 %51, i32 %52, i32 %53, i8* %54)
  store i32 %55, i32* %16, align 4
  br label %57

56:                                               ; preds = %7
  br label %57

57:                                               ; preds = %56, %41, %40
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %16, align 4
  store i32 %61, i32* %8, align 4
  br label %95

62:                                               ; preds = %57
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %66 = call i32 @vie_read_register(i8* %63, i32 %64, i32 %65, i32* %20)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %8, align 4
  br label %95

71:                                               ; preds = %62
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %19, align 4
  %74 = call i32 @getcc(i32 %72, i32 %73, i32 0)
  store i32 %74, i32* %21, align 4
  %75 = load i64, i64* @RFLAGS_STATUS_BITS, align 8
  %76 = trunc i64 %75 to i32
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %20, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* @PSL_PF, align 4
  %82 = load i32, i32* @PSL_Z, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @PSL_N, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %80, %85
  %87 = load i32, i32* %20, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %20, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %92 = load i32, i32* %20, align 4
  %93 = call i32 @vie_update_register(i8* %89, i32 %90, i32 %91, i32 %92, i32 8)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %71, %69, %60
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local i32 @vie_read_register(i8*, i32, i32, i32*) #1

declare dso_local i32 @getcc(i32, i32, i32) #1

declare dso_local i32 @vie_update_register(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
