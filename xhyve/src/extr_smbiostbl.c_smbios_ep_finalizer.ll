; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_smbiostbl.c_smbios_ep_finalizer.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_smbiostbl.c_smbios_ep_finalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbios_entry_point = type { i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smbios_entry_point*, i8*, i8*, i8*)* @smbios_ep_finalizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smbios_ep_finalizer(%struct.smbios_entry_point* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.smbios_entry_point*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.smbios_entry_point* %0, %struct.smbios_entry_point** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %5, align 8
  %13 = getelementptr inbounds %struct.smbios_entry_point, %struct.smbios_entry_point* %12, i32 0, i32 4
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %5, align 8
  %16 = getelementptr inbounds %struct.smbios_entry_point, %struct.smbios_entry_point* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %5, align 8
  %19 = getelementptr inbounds %struct.smbios_entry_point, %struct.smbios_entry_point* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  store i8* null, i8** %9, align 8
  store i32 16, i32* %10, align 4
  br label %20

20:                                               ; preds = %35, %4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 31
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %5, align 8
  %25 = bitcast %struct.smbios_entry_point* %24 to i8**
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = ptrtoint i8* %29 to i64
  %33 = sub i64 %31, %32
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %9, align 8
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %5, align 8
  %41 = getelementptr inbounds %struct.smbios_entry_point, %struct.smbios_entry_point* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %57, %38
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 31
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %5, align 8
  %47 = bitcast %struct.smbios_entry_point* %46 to i8**
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = ptrtoint i8* %51 to i64
  %55 = sub i64 %53, %54
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %9, align 8
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load i8*, i8** %9, align 8
  %62 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %5, align 8
  %63 = getelementptr inbounds %struct.smbios_entry_point, %struct.smbios_entry_point* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
