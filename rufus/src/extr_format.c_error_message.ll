; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_format.c_error_message.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_format.c_error_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_message.error_string = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"Bad magic\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Read-only file system\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Bad map or table\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unexpected block size\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Corrupted entry\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"read/write error\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"no space left\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Too small\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Bad device name\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Missing inode table\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Superblock is corrupted\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Unhandled callback\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Bad block in inode table\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Unsupported feature\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Seek failed\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Invalid argument\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"No directory\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"File not found\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"File is read-only\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Directory already exists\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Cancel requested\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"File too big\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"No journal superblock\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Journal too small\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"No journal\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Too many inodes\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"No current node\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Operation not supported\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"I/O Channel does not support 64-bit operation\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"Bad descriptor size\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Invalid checksum\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Unknown checksum\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"File exists\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"Inode is garbage\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"Wrong journal flags\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"File system is corrupted\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"Bad CRC\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"Journal Superblock is corrupted\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"Inode is corrupted\00", align 1
@EXT2_ET_BASE = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [46 x i8] c"Unknown ext2fs error %ld (EXT2_ET_BASE + %ld)\00", align 1
@FormatStatus = common dso_local global i32 0, align 4
@ERROR_SEVERITY_ERROR = common dso_local global i32 0, align 4
@FACILITY_STORAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @error_message(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %45 [
    i32 155, label %5
    i32 157, label %5
    i32 158, label %5
    i32 150, label %5
    i32 149, label %5
    i32 148, label %5
    i32 156, label %5
    i32 151, label %5
    i32 153, label %5
    i32 152, label %5
    i32 154, label %5
    i32 199, label %5
    i32 138, label %6
    i32 178, label %7
    i32 177, label %7
    i32 176, label %7
    i32 131, label %8
    i32 190, label %9
    i32 175, label %10
    i32 174, label %10
    i32 170, label %10
    i32 171, label %10
    i32 195, label %10
    i32 196, label %10
    i32 165, label %10
    i32 166, label %10
    i32 145, label %10
    i32 135, label %10
    i32 134, label %10
    i32 187, label %11
    i32 133, label %12
    i32 200, label %13
    i32 147, label %14
    i32 191, label %15
    i32 194, label %16
    i32 203, label %17
    i32 128, label %18
    i32 137, label %18
    i32 130, label %18
    i32 159, label %19
    i32 140, label %20
    i32 198, label %20
    i32 173, label %20
    i32 164, label %21
    i32 143, label %22
    i32 181, label %23
    i32 180, label %24
    i32 188, label %25
    i32 193, label %26
    i32 179, label %27
    i32 161, label %28
    i32 141, label %28
    i32 160, label %29
    i32 142, label %30
    i32 132, label %31
    i32 144, label %32
    i32 139, label %33
    i32 163, label %34
    i32 201, label %35
    i32 168, label %36
    i32 172, label %36
    i32 185, label %36
    i32 189, label %36
    i32 184, label %36
    i32 136, label %36
    i32 197, label %36
    i32 146, label %36
    i32 129, label %37
    i32 182, label %38
    i32 167, label %39
    i32 162, label %40
    i32 183, label %41
    i32 202, label %42
    i32 192, label %43
    i32 169, label %44
    i32 186, label %44
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %81

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %81

7:                                                ; preds = %1, %1, %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %81

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %81

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %81

10:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %81

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %81

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %81

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %81

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %81

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %81

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %81

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %81

18:                                               ; preds = %1, %1, %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %81

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %81

20:                                               ; preds = %1, %1, %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %81

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %81

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %81

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %81

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %81

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %81

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %81

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %81

28:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %81

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %81

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %81

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %81

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %81

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %81

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %81

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %81

36:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %81

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %81

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %81

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %81

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %81

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %81

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %81

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %81

44:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %81

45:                                               ; preds = %1
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @EXT2_ET_BASE, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @EXT2_ET_BASE, align 4
  %52 = add nsw i32 %51, 1000
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @EXT2_ET_BASE, align 4
  %58 = sub nsw i32 %56, %57
  %59 = call i32 (i8*, i8*, ...) @static_sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @error_message.error_string, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.40, i64 0, i64 0), i32 %55, i32 %58)
  br label %80

60:                                               ; preds = %49, %45
  %61 = load i32, i32* @FormatStatus, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %65 = load i32, i32* @FACILITY_STORAGE, align 4
  %66 = call i32 @FAC(i32 %65)
  %67 = or i32 %64, %66
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %68, 65535
  %70 = or i32 %67, %69
  br label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @FormatStatus, align 4
  br label %73

73:                                               ; preds = %71, %63
  %74 = phi i32 [ %70, %63 ], [ %72, %71 ]
  %75 = call i32 @SetLastError(i32 %74)
  %76 = call i32 (...) @WindowsErrorString()
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 (i8*, i8*, ...) @static_sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @error_message.error_string, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %73, %54
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @error_message.error_string, i64 0, i64 0), i8** %2, align 8
  br label %81

81:                                               ; preds = %80, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %82 = load i8*, i8** %2, align 8
  ret i8* %82
}

declare dso_local i32 @static_sprintf(i8*, i8*, ...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @FAC(i32) #1

declare dso_local i32 @WindowsErrorString(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
