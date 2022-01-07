; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_copy_setup.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_copy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_guest_paging = type { i32 }
%struct.iovec = type { i64, i8* }

@XHYVE_PAGE_MASK = common dso_local global i64 0, align 8
@XHYVE_PAGE_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xh_vm_copy_setup(i32 %0, %struct.vm_guest_paging* %1, i64 %2, i64 %3, i32 %4, %struct.iovec* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vm_guest_paging*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.iovec*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.vm_guest_paging* %1, %struct.vm_guest_paging** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.iovec* %5, %struct.iovec** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %22, align 4
  br label %24

24:                                               ; preds = %39, %8
  %25 = load i32, i32* %22, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.iovec*, %struct.iovec** %15, align 8
  %30 = load i32, i32* %22, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i64 %31
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i32 0, i32 1
  store i8* null, i8** %33, align 8
  %34 = load %struct.iovec*, %struct.iovec** %15, align 8
  %35 = load i32, i32* %22, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i64 %36
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %22, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %22, align 4
  br label %24

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %81, %42
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %98

46:                                               ; preds = %43
  %47 = load i32, i32* %16, align 4
  %48 = icmp sgt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i32*, i32** %17, align 8
  %56 = call i32 @xh_vm_gla2gpa(i32 %51, %struct.vm_guest_paging* %52, i64 %53, i32 %54, i64* %19, i32* %55)
  store i32 %56, i32* %23, align 4
  %57 = load i32, i32* %23, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %46
  %60 = load i32*, i32** %17, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59, %46
  %64 = load i32, i32* %23, align 4
  store i32 %64, i32* %9, align 4
  br label %99

65:                                               ; preds = %59
  %66 = load i64, i64* %19, align 8
  %67 = load i64, i64* @XHYVE_PAGE_MASK, align 8
  %68 = and i64 %66, %67
  store i64 %68, i64* %21, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @XHYVE_PAGE_SIZE, align 8
  %71 = load i64, i64* %21, align 8
  %72 = sub i64 %70, %71
  %73 = call i64 @min(i64 %69, i64 %72)
  store i64 %73, i64* %20, align 8
  %74 = load i64, i64* %19, align 8
  %75 = load i64, i64* %20, align 8
  %76 = call i8* @xh_vm_map_gpa(i64 %74, i64 %75)
  store i8* %76, i8** %18, align 8
  %77 = load i8*, i8** %18, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = load i32, i32* @EFAULT, align 4
  store i32 %80, i32* %9, align 4
  br label %99

81:                                               ; preds = %65
  %82 = load i8*, i8** %18, align 8
  %83 = load %struct.iovec*, %struct.iovec** %15, align 8
  %84 = getelementptr inbounds %struct.iovec, %struct.iovec* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i64, i64* %20, align 8
  %86 = load %struct.iovec*, %struct.iovec** %15, align 8
  %87 = getelementptr inbounds %struct.iovec, %struct.iovec* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.iovec*, %struct.iovec** %15, align 8
  %89 = getelementptr inbounds %struct.iovec, %struct.iovec* %88, i32 1
  store %struct.iovec* %89, %struct.iovec** %15, align 8
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %16, align 4
  %92 = load i64, i64* %20, align 8
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %12, align 8
  %95 = load i64, i64* %20, align 8
  %96 = load i64, i64* %13, align 8
  %97 = sub i64 %96, %95
  store i64 %97, i64* %13, align 8
  br label %43

98:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %98, %79, %63
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xh_vm_gla2gpa(i32, %struct.vm_guest_paging*, i64, i32, i64*, i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @xh_vm_map_gpa(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
