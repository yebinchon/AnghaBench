; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zinject/extr_translate.c_parse_pathname.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zinject/extr_translate.c_parse_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i32 }
%struct.extmnttab = type { i8*, i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalid object '%s': must be full path\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot find mountpoint for '%s'\0A\00", align 1
@MNTTYPE_ZFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"invalid path '%s': not a ZFS filesystem\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"invalid path '%s': mountpoint doesn't match path\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, %struct.stat64*)* @parse_pathname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pathname(i8* %0, i8* %1, i8* %2, %struct.stat64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat64*, align 8
  %10 = alloca %struct.extmnttab, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.stat64* %3, %struct.stat64** %9, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @compress_slashes(i8* %19, i8* %18)
  %21 = getelementptr inbounds i8, i8* %18, i64 0
  %22 = load i8, i8* %21, align 16
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 47
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %18)
  %28 = call i32 (...) @usage()
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %78

29:                                               ; preds = %4
  %30 = load %struct.stat64*, %struct.stat64** %9, align 8
  %31 = call i64 @getextmntent(i8* %18, %struct.extmnttab* %10, %struct.stat64* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %78

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %10, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MNTTYPE_ZFS, align 4
  %40 = call i64 @strcmp(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %78

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %10, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %10, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strlen(i32 %49)
  %51 = call i64 @strncmp(i8* %18, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %78

56:                                               ; preds = %45
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %10, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strcpy(i8* %57, i8* %59)
  %61 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %10, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @strlen(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %18, i64 %64
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 47
  br i1 %70, label %71, label %74

71:                                               ; preds = %56
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %11, align 8
  br label %74

74:                                               ; preds = %71, %56
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @strcpy(i8* %75, i8* %76)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %78

78:                                               ; preds = %74, %53, %42, %33, %25
  %79 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @compress_slashes(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @getextmntent(i8*, %struct.extmnttab*, %struct.stat64*) #2

declare dso_local i64 @strcmp(i32, i32) #2

declare dso_local i64 @strncmp(i8*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
