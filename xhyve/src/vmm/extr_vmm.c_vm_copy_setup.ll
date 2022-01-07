; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_copy_setup.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_copy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vm_guest_paging = type { i32 }
%struct.vm_copyinfo = type { i64, i64, i8* }

@.str = private unnamed_addr constant [25 x i8] c"insufficient vm_copyinfo\00", align 1
@XHYVE_PAGE_MASK = common dso_local global i64 0, align 8
@XHYVE_PAGE_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_copy_setup(%struct.vm* %0, i32 %1, %struct.vm_guest_paging* %2, i64 %3, i64 %4, i32 %5, %struct.vm_copyinfo* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.vm*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vm_guest_paging*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.vm_copyinfo*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  store %struct.vm* %0, %struct.vm** %11, align 8
  store i32 %1, i32* %12, align 4
  store %struct.vm_guest_paging* %2, %struct.vm_guest_paging** %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.vm_copyinfo* %6, %struct.vm_copyinfo** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %28 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %17, align 8
  %29 = load i32, i32* %18, align 4
  %30 = zext i32 %29 to i64
  %31 = mul i64 24, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @bzero(%struct.vm_copyinfo* %28, i32 %32)
  store i32 0, i32* %22, align 4
  %34 = load i64, i64* %15, align 8
  store i64 %34, i64* %25, align 8
  br label %35

35:                                               ; preds = %59, %9
  %36 = load i64, i64* %25, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %88

38:                                               ; preds = %35
  %39 = load i32, i32* %22, align 4
  %40 = load i32, i32* %18, align 4
  %41 = icmp slt i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @KASSERT(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.vm*, %struct.vm** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32*, i32** %19, align 8
  %50 = call i32 @vm_gla2gpa(%struct.vm* %44, i32 %45, %struct.vm_guest_paging* %46, i64 %47, i32 %48, i64* %27, i32* %49)
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %20, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %38
  %54 = load i32*, i32** %19, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %38
  %58 = load i32, i32* %20, align 4
  store i32 %58, i32* %10, align 4
  br label %134

59:                                               ; preds = %53
  %60 = load i64, i64* %27, align 8
  %61 = load i64, i64* @XHYVE_PAGE_MASK, align 8
  %62 = and i64 %60, %61
  store i64 %62, i64* %24, align 8
  %63 = load i64, i64* %25, align 8
  %64 = load i64, i64* @XHYVE_PAGE_SIZE, align 8
  %65 = load i64, i64* %24, align 8
  %66 = sub i64 %64, %65
  %67 = call i64 @min(i64 %63, i64 %66)
  store i64 %67, i64* %23, align 8
  %68 = load i64, i64* %27, align 8
  %69 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %17, align 8
  %70 = load i32, i32* %22, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %69, i64 %71
  %73 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %72, i32 0, i32 0
  store i64 %68, i64* %73, align 8
  %74 = load i64, i64* %23, align 8
  %75 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %17, align 8
  %76 = load i32, i32* %22, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %75, i64 %77
  %79 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %78, i32 0, i32 1
  store i64 %74, i64* %79, align 8
  %80 = load i64, i64* %23, align 8
  %81 = load i64, i64* %25, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %25, align 8
  %83 = load i64, i64* %23, align 8
  %84 = load i64, i64* %14, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %14, align 8
  %86 = load i32, i32* %22, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %22, align 4
  br label %35

88:                                               ; preds = %35
  store i32 0, i32* %21, align 4
  br label %89

89:                                               ; preds = %118, %88
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* %22, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %121

93:                                               ; preds = %89
  %94 = load %struct.vm*, %struct.vm** %11, align 8
  %95 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %17, align 8
  %96 = load i32, i32* %21, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %95, i64 %97
  %99 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %17, align 8
  %102 = load i32, i32* %21, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %101, i64 %103
  %105 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i8* @vm_gpa2hva(%struct.vm* %94, i64 %100, i64 %106)
  store i8* %107, i8** %26, align 8
  %108 = load i8*, i8** %26, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %93
  br label %121

111:                                              ; preds = %93
  %112 = load i8*, i8** %26, align 8
  %113 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %17, align 8
  %114 = load i32, i32* %21, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %113, i64 %115
  %117 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %116, i32 0, i32 2
  store i8* %112, i8** %117, align 8
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %21, align 4
  br label %89

121:                                              ; preds = %110, %89
  %122 = load i32, i32* %21, align 4
  %123 = load i32, i32* %22, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load %struct.vm*, %struct.vm** %11, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %17, align 8
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @vm_copy_teardown(%struct.vm* %126, i32 %127, %struct.vm_copyinfo* %128, i32 %129)
  %131 = load i32, i32* @EFAULT, align 4
  store i32 %131, i32* %10, align 4
  br label %134

132:                                              ; preds = %121
  %133 = load i32*, i32** %19, align 8
  store i32 0, i32* %133, align 4
  store i32 0, i32* %10, align 4
  br label %134

134:                                              ; preds = %132, %125, %57
  %135 = load i32, i32* %10, align 4
  ret i32 %135
}

declare dso_local i32 @bzero(%struct.vm_copyinfo*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_gla2gpa(%struct.vm*, i32, %struct.vm_guest_paging*, i64, i32, i64*, i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @vm_gpa2hva(%struct.vm*, i64, i64) #1

declare dso_local i32 @vm_copy_teardown(%struct.vm*, i32, %struct.vm_copyinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
