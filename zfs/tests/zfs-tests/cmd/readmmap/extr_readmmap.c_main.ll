; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/readmmap/extr_readmmap.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/readmmap/extr_readmmap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"badfile\00", align 1
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"usage: %s <file name>\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"open to create\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"short write: %d != %zd\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@MS_SYNC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"msync\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"munmap\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"short read: %d != %zd\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"bad data from read!  got buf[%zd]=%d, expected 1\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"good data from read: buf[%zd]=1\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i64 4395, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @optind, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17, %2
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %17
  %29 = load i64, i64* %7, align 8
  %30 = call i8* @calloc(i32 1, i64 %29)
  store i8* %30, i8** %9, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %28
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* @optind, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @remove(i8* %41)
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @O_RDWR, align 4
  %45 = load i32, i32* @O_CREAT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @O_TRUNC, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @open(i8* %43, i32 %48, i32 438)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %137

54:                                               ; preds = %35
  %55 = load i32, i32* %11, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @write(i32 %55, i8* %56, i64 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %7, align 8
  %67 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %65, i64 %66)
  store i32 1, i32* %13, align 4
  br label %137

68:                                               ; preds = %54
  %69 = load i64, i64* %7, align 8
  %70 = load i32, i32* @PROT_READ, align 4
  %71 = load i32, i32* @PROT_WRITE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @MAP_SHARED, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i8* @mmap(i32 0, i64 %69, i32 %72, i32 %73, i32 %74, i32 0)
  store i8* %75, i8** %10, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** @MAP_FAILED, align 8
  %78 = icmp eq i8* %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %137

81:                                               ; preds = %68
  %82 = call i32 @time(i32* null)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @srandom(i32 %83)
  %85 = call i64 (...) @random()
  %86 = load i64, i64* %7, align 8
  %87 = urem i64 %85, %86
  store i64 %87, i64* %8, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 1, i8* %90, align 1
  %91 = load i8*, i8** %10, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i32, i32* @MS_SYNC, align 4
  %94 = call i64 @msync(i8* %91, i64 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %81
  %97 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %137

98:                                               ; preds = %81
  %99 = load i8*, i8** %10, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i64 @munmap(i8* %99, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %137

105:                                              ; preds = %98
  %106 = load i32, i32* %11, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @pread(i32 %106, i8* %107, i64 %108, i32 0)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %7, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %105
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %7, align 8
  %118 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %116, i64 %117)
  store i32 1, i32* %13, align 4
  br label %137

119:                                              ; preds = %105
  %120 = load i8*, i8** %9, align 8
  %121 = load i64, i64* %8, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 1
  br i1 %125, label %126, label %134

126:                                              ; preds = %119
  %127 = load i64, i64* %8, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i64 %127, i32 %132)
  store i32 1, i32* %13, align 4
  br label %137

134:                                              ; preds = %119
  %135 = load i64, i64* %8, align 8
  %136 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i64 %135)
  br label %137

137:                                              ; preds = %134, %126, %114, %103, %96, %79, %63, %52
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, -1
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @close(i32 %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i8*, i8** %9, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i8*, i8** %9, align 8
  %148 = call i32 @free(i8* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %13, align 4
  ret i32 %150
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i8* @mmap(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @srandom(i32) #1

declare dso_local i64 @random(...) #1

declare dso_local i64 @msync(i8*, i64, i32) #1

declare dso_local i64 @munmap(i8*, i64) #1

declare dso_local i32 @pread(i32, i8*, i64, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
