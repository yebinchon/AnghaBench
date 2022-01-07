; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_cachefile.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_cachefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot open '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to stat '%s': %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to allocate %llu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to read %llu bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to unpack nvlist\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dump_cachefile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_cachefile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open64(i8* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = load i32, i32* @errno, align 4
  %14 = call i8* @strerror(i32 %13)
  %15 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %14)
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @fstat64(i32 %18, %struct.stat64* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* @errno, align 4
  %24 = call i8* @strerror(i32 %23)
  %25 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %24)
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i8* @malloc(i64 %29)
  store i8* %30, i8** %5, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @stderr, align 4
  %34 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %27
  %40 = load i32, i32* %3, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @read(i32 %40, i8* %41, i64 %43)
  %45 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load i32, i32* @stderr, align 4
  %50 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = call i32 @exit(i32 1) #3
  unreachable

55:                                               ; preds = %39
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @close(i32 %56)
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @nvlist_unpack(i8* %58, i64 %60, i32** %6, i32 0)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %66 = call i32 @exit(i32 1) #3
  unreachable

67:                                               ; preds = %55
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @dump_nvlist(i32* %70, i32 0)
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @nvlist_free(i32* %72)
  ret void
}

declare dso_local i32 @open64(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fstat64(i32, %struct.stat64*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @nvlist_unpack(i8*, i64, i32**, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dump_nvlist(i32*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
