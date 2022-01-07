; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_upgrade.c_append_productcode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_upgrade.c_append_productcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@szSemiColon = common dso_local global i64* null, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@szSourceDir = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Found Related Product... %s now %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64*, i64*)* @append_productcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_productcode(%struct.TYPE_4__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64*, i64** %5, align 8
  %15 = call i64* @msi_dup_property(i32 %13, i64* %14)
  store i64* %15, i64** %7, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64*, i64** %7, align 8
  %20 = call i32 @strlenW(i64* %19)
  store i32 %20, i32* %9, align 4
  br label %22

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i64*, i64** %6, align 8
  %26 = call i32 @strlenW(i64* %25)
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i64* @msi_alloc(i32 %34)
  store i64* %35, i64** %8, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %22
  %39 = load i64*, i64** %8, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = call i32 @strcpyW(i64* %39, i64* %40)
  %42 = load i64*, i64** %8, align 8
  %43 = load i64*, i64** @szSemiColon, align 8
  %44 = call i32 @strcatW(i64* %42, i64* %43)
  br label %48

45:                                               ; preds = %22
  %46 = load i64*, i64** %8, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i64*, i64** %8, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = call i32 @strcatW(i64* %49, i64* %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64*, i64** %5, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = call i64 @msi_set_property(i32 %54, i64* %55, i64* %56, i32 -1)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %48
  %62 = load i64*, i64** %5, align 8
  %63 = load i32, i32* @szSourceDir, align 4
  %64 = call i32 @strcmpW(i64* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 @msi_reset_folders(%struct.TYPE_4__* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %61, %48
  %71 = load i64*, i64** %5, align 8
  %72 = call i32 @debugstr_w(i64* %71)
  %73 = load i64*, i64** %8, align 8
  %74 = call i32 @debugstr_w(i64* %73)
  %75 = call i32 @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %74)
  %76 = load i64*, i64** %7, align 8
  %77 = call i32 @msi_free(i64* %76)
  %78 = load i64*, i64** %8, align 8
  %79 = call i32 @msi_free(i64* %78)
  ret void
}

declare dso_local i64* @msi_dup_property(i32, i64*) #1

declare dso_local i32 @strlenW(i64*) #1

declare dso_local i64* @msi_alloc(i32) #1

declare dso_local i32 @strcpyW(i64*, i64*) #1

declare dso_local i32 @strcatW(i64*, i64*) #1

declare dso_local i64 @msi_set_property(i32, i64*, i64*, i32) #1

declare dso_local i32 @strcmpW(i64*, i32) #1

declare dso_local i32 @msi_reset_folders(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i64*) #1

declare dso_local i32 @msi_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
