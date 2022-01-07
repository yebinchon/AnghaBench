; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_create_temp_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_create_temp_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@create_temp_dir.id = internal global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@szTempFolder = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i64 0, align 8
@szMsi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*)* @create_temp_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_temp_dir(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = mul nuw i64 4, %15
  %19 = udiv i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = load i32, i32* @szTempFolder, align 4
  %23 = call i64 @msi_get_property(%struct.TYPE_4__* %21, i32 %22, i32* %17, i32* %7)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %13
  %26 = call i64 @GetFileAttributesW(i32* %17)
  %27 = load i64, i64* @FILE_ATTRIBUTE_DIRECTORY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %13
  %30 = load i32, i32* @MAX_PATH, align 4
  %31 = call i32 @GetTempPathW(i32 %30, i32* %17)
  br label %32

32:                                               ; preds = %29, %25
  %33 = call i32 @strdupW(i32* %17)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = icmp ne i32 %33, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32* null, i32** %2, align 8
  store i32 1, i32* %8, align 4
  br label %39

38:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %79 [
    i32 0, label %42
    i32 1, label %77
  ]

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strlenW(i32 %46)
  %48 = add nsw i32 %47, 20
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32* @msi_alloc(i32 %51)
  store i32* %52, i32** %4, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %75

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %73, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @szMsi, align 4
  %60 = load i32, i32* @create_temp_dir.id, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @create_temp_dir.id, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @GetTempFileNameW(i32 %58, i32 %59, i32 %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %55
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @msi_free(i32* %66)
  store i32* null, i32** %2, align 8
  br label %77

68:                                               ; preds = %55
  %69 = load i32*, i32** %4, align 8
  %70 = call i64 @CreateDirectoryW(i32* %69, i32* null)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %74

73:                                               ; preds = %68
  br label %55

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74, %43
  %76 = load i32*, i32** %4, align 8
  store i32* %76, i32** %2, align 8
  br label %77

77:                                               ; preds = %75, %65, %39
  %78 = load i32*, i32** %2, align 8
  ret i32* %78

79:                                               ; preds = %39
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @msi_get_property(%struct.TYPE_4__*, i32, i32*, i32*) #2

declare dso_local i64 @GetFileAttributesW(i32*) #2

declare dso_local i32 @GetTempPathW(i32, i32*) #2

declare dso_local i32 @strdupW(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32* @msi_alloc(i32) #2

declare dso_local i32 @strlenW(i32) #2

declare dso_local i32 @GetTempFileNameW(i32, i32, i32, i32*) #2

declare dso_local i32 @msi_free(i32*) #2

declare dso_local i64 @CreateDirectoryW(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
