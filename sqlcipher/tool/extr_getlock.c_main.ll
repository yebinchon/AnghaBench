; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_getlock.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_getlock.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cannot open %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"SQLite format 3\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"not an SQLite database: %s\0A\00", align 1
@F_RDLCK = common dso_local global i32 0, align 4
@SHARED_FIRST = common dso_local global i64 0, align 8
@SHARED_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"EXCLUSIVE\00", align 1
@PENDING_BYTE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"PENDING\00", align 1
@RESERVED_BYTE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"RESERVED\00", align 1
@F_WRLCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"SHARED\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"-shm\00", align 1
@SHM_RECOVER = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"WAL-RECOVERY\00", align 1
@SHM_CHECKPOINT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"WAL-CHECKPOINT\00", align 1
@SHM_WRITE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [10 x i8] c"WAL-WRITE\00", align 1
@SHM_READ_SIZE = common dso_local global i32 0, align 4
@SHM_READ_FIRST = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"WAL-READ\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"file is not locked\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [100 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @usage(i8* %20)
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @O_RDONLY, align 4
  %27 = call i32 @open(i8* %25, i32 %26, i32 0)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 1, i32* %3, align 4
  br label %178

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %39 = call i32 @read(i32 %37, i8* %38, i32 100)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 100
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %44 = call i64 @memcmp(i8* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42, %36
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = call i32 @exit(i32 1) #3
  unreachable

53:                                               ; preds = %42
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @F_RDLCK, align 4
  %56 = load i64, i64* @SHARED_FIRST, align 8
  %57 = load i32, i32* @SHARED_SIZE, align 4
  %58 = call i64 @isLocked(i32 %54, i32 %55, i64 %56, i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %178

61:                                               ; preds = %53
  %62 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 18
  %63 = load i8, i8* %62, align 2
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @F_RDLCK, align 4
  %72 = load i64, i64* @PENDING_BYTE, align 8
  %73 = call i64 @isLocked(i32 %70, i32 %71, i64 %72, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %178

76:                                               ; preds = %69
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @F_RDLCK, align 4
  %79 = load i64, i64* @RESERVED_BYTE, align 8
  %80 = call i64 @isLocked(i32 %77, i32 %78, i64 %79, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %178

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @F_WRLCK, align 4
  %86 = load i64, i64* @SHARED_FIRST, align 8
  %87 = load i32, i32* @SHARED_SIZE, align 4
  %88 = call i64 @isLocked(i32 %84, i32 %85, i64 %86, i32 %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %178

91:                                               ; preds = %83
  br label %172

92:                                               ; preds = %61
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strlen(i8* %95)
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 100
  %100 = call i8* @malloc(i32 %99)
  store i8* %100, i8** %8, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %106 = call i32 @exit(i32 1) #3
  unreachable

107:                                              ; preds = %92
  %108 = load i8*, i8** %8, align 8
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @memcpy(i8* %108, i8* %111, i32 %112)
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = call i32 @memcpy(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %119 = load i8*, i8** %8, align 8
  %120 = load i32, i32* @O_RDONLY, align 4
  %121 = call i32 @open(i8* %119, i32 %120, i32 0)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %107
  %125 = load i32, i32* @stderr, align 4
  %126 = load i8*, i8** %8, align 8
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %126)
  store i32 1, i32* %3, align 4
  br label %178

128:                                              ; preds = %107
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @F_RDLCK, align 4
  %131 = load i64, i64* @SHM_RECOVER, align 8
  %132 = call i64 @isLocked(i32 %129, i32 %130, i64 %131, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %178

135:                                              ; preds = %128
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @F_RDLCK, align 4
  %138 = load i64, i64* @SHM_CHECKPOINT, align 8
  %139 = call i64 @isLocked(i32 %136, i32 %137, i64 %138, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @F_RDLCK, align 4
  %146 = load i64, i64* @SHM_WRITE, align 8
  %147 = call i64 @isLocked(i32 %144, i32 %145, i64 %146, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %152

152:                                              ; preds = %168, %135
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* @SHM_READ_SIZE, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %171

156:                                              ; preds = %152
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @F_WRLCK, align 4
  %159 = load i64, i64* @SHM_READ_FIRST, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %159, %161
  %163 = call i64 @isLocked(i32 %157, i32 %158, i64 %162, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %165, %163
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %156
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %14, align 4
  br label %152

171:                                              ; preds = %152
  br label %172

172:                                              ; preds = %171, %91
  %173 = load i32, i32* %13, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %172
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %134, %124, %90, %82, %75, %60, %30
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @isLocked(i32, i32, i64, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
