; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_vsc_add_drives.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_vsc_add_drives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CB_ADDSTRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @msi_dialog_vsc_add_drives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msi_dialog_vsc_add_drives(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = call i32 @GetLogicalDriveStringsW(i32 0, i64* null)
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %47

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i64* @msi_alloc(i32 %17)
  store i64* %18, i64** %5, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %47

22:                                               ; preds = %12
  %23 = load i32, i32* %7, align 4
  %24 = load i64*, i64** %5, align 8
  %25 = call i32 @GetLogicalDriveStringsW(i32 %23, i64* %24)
  %26 = load i64*, i64** %5, align 8
  store i64* %26, i64** %6, align 8
  br label %27

27:                                               ; preds = %31, %22
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CB_ADDSTRING, align 4
  %36 = load i64*, i64** %6, align 8
  %37 = ptrtoint i64* %36 to i32
  %38 = call i32 @SendMessageW(i32 %34, i32 %35, i32 0, i32 %37)
  %39 = load i64*, i64** %6, align 8
  %40 = call i64 @lstrlenW(i64* %39)
  %41 = add nsw i64 %40, 1
  %42 = load i64*, i64** %6, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 %41
  store i64* %43, i64** %6, align 8
  br label %27

44:                                               ; preds = %27
  %45 = load i64*, i64** %5, align 8
  %46 = call i32 @msi_free(i64* %45)
  br label %47

47:                                               ; preds = %44, %21, %11
  ret void
}

declare dso_local i32 @GetLogicalDriveStringsW(i32, i64*) #1

declare dso_local i64* @msi_alloc(i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i64 @lstrlenW(i64*) #1

declare dso_local i32 @msi_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
