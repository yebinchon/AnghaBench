; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/parttest/extr_parttest.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/parttest/extr_parttest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed allocating memory!\0A\00", align 1
@DiskFormat = common dso_local global i32 0, align 4
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FILE_SYNCHRONOUS_IO_NONALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed opening disk! %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed reading sector 0! %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Sector 0 seems to be FAT boot sector\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Sector 0 seems to be NTFS boot sector\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Sector 0 might be MBR\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Sector 0 not recognized\0A\00", align 1
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed opening partition! %lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Failed reading first sector of the partition! %lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Seems to be a FAT partittion\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Seems to be a NTFS partition\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Seems to be MBR\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Not recognized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @SECTOR_SIZE, align 4
  %20 = call i32* @malloc(i32 %19)
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %148

26:                                               ; preds = %2
  %27 = load i32, i32* @DiskFormat, align 4
  %28 = call i32 @swprintf(i32* %18, i32 %27, i32 0, i32 0)
  %29 = call i32 @RtlInitUnicodeString(i32* %12, i32* %18)
  %30 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %31 = call i32 @InitializeObjectAttributes(i32* %8, i32* %12, i32 %30, i32* null, i32* null)
  %32 = load i32, i32* @GENERIC_READ, align 4
  %33 = load i32, i32* @SYNCHRONIZE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FILE_SYNCHRONOUS_IO_NONALERT, align 4
  %36 = call i32 @NtOpenFile(i32* %6, i32 %34, i32* %8, i32* %9, i32 0, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @NT_SUCCESS(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %26
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @free(i32* %41)
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %148

46:                                               ; preds = %26
  %47 = load i32, i32* %6, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* @SECTOR_SIZE, align 4
  %50 = call i32 @NtReadFile(i32 %47, i32* null, i32* null, i32* null, i32* %9, i32* %48, i32 %49, i32* null, i32* null)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @NtClose(i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @NT_SUCCESS(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %46
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @free(i32* %57)
  %59 = load i32, i32* @stderr, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %148

62:                                               ; preds = %46
  %63 = load i32*, i32** %13, align 8
  %64 = call i64 @CheckAgainstFAT(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %84

68:                                               ; preds = %62
  %69 = load i32*, i32** %13, align 8
  %70 = call i64 @CheckAgainstNTFS(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %83

74:                                               ; preds = %68
  %75 = load i32*, i32** %13, align 8
  %76 = call i64 @CheckAgainstMBR(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %82

80:                                               ; preds = %74
  %81 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %78
  br label %83

83:                                               ; preds = %82, %72
  br label %84

84:                                               ; preds = %83, %66
  %85 = load i32, i32* @DiskFormat, align 4
  %86 = call i32 @swprintf(i32* %18, i32 %85, i32 0, i32 1)
  %87 = call i32 @RtlInitUnicodeString(i32* %12, i32* %18)
  %88 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %89 = call i32 @InitializeObjectAttributes(i32* %8, i32* %12, i32 %88, i32* null, i32* null)
  %90 = load i32, i32* @GENERIC_READ, align 4
  %91 = load i32, i32* @SYNCHRONIZE, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @FILE_SHARE_READ, align 4
  %94 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @FILE_SYNCHRONOUS_IO_NONALERT, align 4
  %99 = call i32 @NtOpenFile(i32* %6, i32 %92, i32* %8, i32* %9, i32 %97, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @NT_SUCCESS(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %84
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @free(i32* %104)
  %106 = load i32, i32* @stderr, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %107)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %148

109:                                              ; preds = %84
  %110 = load i32, i32* %6, align 4
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* @SECTOR_SIZE, align 4
  %113 = call i32 @NtReadFile(i32 %110, i32* null, i32* null, i32* null, i32* %9, i32* %111, i32 %112, i32* null, i32* null)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @NT_SUCCESS(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %109
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 @free(i32* %118)
  %120 = load i32, i32* @stderr, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %148

123:                                              ; preds = %109
  %124 = load i32*, i32** %13, align 8
  %125 = call i64 @CheckAgainstFAT(i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %145

129:                                              ; preds = %123
  %130 = load i32*, i32** %13, align 8
  %131 = call i64 @CheckAgainstNTFS(i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %144

135:                                              ; preds = %129
  %136 = load i32*, i32** %13, align 8
  %137 = call i64 @CheckAgainstMBR(i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %143

141:                                              ; preds = %135
  %142 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %139
  br label %144

144:                                              ; preds = %143, %133
  br label %145

145:                                              ; preds = %144, %127
  %146 = load i32*, i32** %13, align 8
  %147 = call i32 @free(i32* %146)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %148

148:                                              ; preds = %145, %117, %103, %56, %40, %23
  %149 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @swprintf(i32*, i32, i32, i32) #2

declare dso_local i32 @RtlInitUnicodeString(i32*, i32*) #2

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @NtOpenFile(i32*, i32, i32*, i32*, i32, i32) #2

declare dso_local i32 @NT_SUCCESS(i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @NtReadFile(i32, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @NtClose(i32) #2

declare dso_local i64 @CheckAgainstFAT(i32*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i64 @CheckAgainstNTFS(i32*) #2

declare dso_local i64 @CheckAgainstMBR(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
