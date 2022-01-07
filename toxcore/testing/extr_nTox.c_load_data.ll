; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_load_data.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_load_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Tox_Options = type { i64, i32*, i32 }

@data_file_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"[!] could not read data file!\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@TOX_SAVEDATA_TYPE_TOX_SAVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"[!] fclose failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @load_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_data() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Tox_Options, align 8
  %8 = alloca i32*, align 8
  %9 = load i32, i32* @data_file_name, align 4
  %10 = call i32* @fopen(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %51

13:                                               ; preds = %0
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @SEEK_END, align 4
  %16 = call i32 @fseek(i32* %14, i32 0, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @ftell(i32* %17)
  store i64 %18, i64* %3, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @rewind(i32* %19)
  %21 = load i64, i64* %3, align 8
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %4, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %5, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call i64 @fread(i32* %23, i32 4, i64 %24, i32* %25)
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %13
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i64 @fclose(i32* %32)
  store i32* null, i32** %1, align 8
  store i32 1, i32* %6, align 4
  br label %49

34:                                               ; preds = %13
  %35 = call i32 @tox_options_default(%struct.Tox_Options* %7)
  %36 = load i32, i32* @TOX_SAVEDATA_TYPE_TOX_SAVE, align 4
  %37 = getelementptr inbounds %struct.Tox_Options, %struct.Tox_Options* %7, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.Tox_Options, %struct.Tox_Options* %7, i32 0, i32 1
  store i32* %23, i32** %38, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds %struct.Tox_Options, %struct.Tox_Options* %7, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = call i32* @tox_new(%struct.Tox_Options* %7, i32* null)
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = call i64 @fclose(i32* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %34
  %48 = load i32*, i32** %8, align 8
  store i32* %48, i32** %1, align 8
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %29
  %50 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %50)
  br label %53

51:                                               ; preds = %0
  %52 = call i32* @tox_new(%struct.Tox_Options* null, i32* null)
  store i32* %52, i32** %1, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = load i32*, i32** %1, align 8
  ret i32* %54
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @fread(i32*, i32, i64, i32*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @tox_options_default(%struct.Tox_Options*) #1

declare dso_local i32* @tox_new(%struct.Tox_Options*, i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
