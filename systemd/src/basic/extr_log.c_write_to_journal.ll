; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_log.c_write_to_journal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_log.c_write_to_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }
%struct.msghdr = type { i32, %struct.iovec* }

@LINE_MAX = common dso_local global i32 0, align 4
@journal_fd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"MESSAGE=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*)* @write_to_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_to_journal(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca [4 x %struct.iovec], align 16
  %25 = alloca %struct.msghdr, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.iovec, align 4
  %28 = alloca %struct.iovec, align 4
  %29 = alloca %struct.iovec, align 4
  %30 = alloca %struct.iovec, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %31 = load i32, i32* @LINE_MAX, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %22, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %23, align 8
  %35 = bitcast [4 x %struct.iovec]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 16, i1 false)
  %36 = bitcast %struct.msghdr* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 16, i1 false)
  %37 = load i64, i64* @journal_fd, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %10
  store i32 0, i32* %11, align 4
  store i32 1, i32* %26, align 4
  br label %86

40:                                               ; preds = %10
  %41 = trunc i64 %32 to i32
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i8*, i8** %14, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i8*, i8** %16, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = load i8*, i8** %18, align 8
  %49 = load i8*, i8** %19, align 8
  %50 = load i8*, i8** %20, align 8
  %51 = call i32 @log_do_header(i8* %34, i32 %41, i32 %42, i32 %43, i8* %44, i32 %45, i8* %46, i8* %47, i8* %48, i8* %49, i8* %50)
  %52 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %24, i64 0, i64 0
  %53 = call i32 @IOVEC_MAKE_STRING(i8* %34)
  %54 = getelementptr inbounds %struct.iovec, %struct.iovec* %27, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = bitcast %struct.iovec* %52 to i8*
  %56 = bitcast %struct.iovec* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %55, i8* align 4 %56, i64 4, i1 false)
  %57 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %24, i64 0, i64 1
  %58 = call i32 @IOVEC_MAKE_STRING(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %59 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = bitcast %struct.iovec* %57 to i8*
  %61 = bitcast %struct.iovec* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %24, i64 0, i64 2
  %63 = load i8*, i8** %21, align 8
  %64 = call i32 @IOVEC_MAKE_STRING(i8* %63)
  %65 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = bitcast %struct.iovec* %62 to i8*
  %67 = bitcast %struct.iovec* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 4 %67, i64 4, i1 false)
  %68 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %24, i64 0, i64 3
  %69 = call i32 @IOVEC_MAKE_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %30, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = bitcast %struct.iovec* %68 to i8*
  %72 = bitcast %struct.iovec* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 4, i1 false)
  %73 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %24, i64 0, i64 0
  %74 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %25, i32 0, i32 1
  store %struct.iovec* %73, %struct.iovec** %74, align 8
  %75 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %24, i64 0, i64 0
  %76 = call i32 @ELEMENTSOF(%struct.iovec* %75)
  %77 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %25, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load i64, i64* @journal_fd, align 8
  %79 = load i32, i32* @MSG_NOSIGNAL, align 4
  %80 = call i64 @sendmsg(i64 %78, %struct.msghdr* %25, i32 %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %40
  %83 = load i32, i32* @errno, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  store i32 1, i32* %26, align 4
  br label %86

85:                                               ; preds = %40
  store i32 1, i32* %11, align 4
  store i32 1, i32* %26, align 4
  br label %86

86:                                               ; preds = %85, %82, %39
  %87 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %11, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @log_do_header(i8*, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*) #3

declare dso_local i32 @IOVEC_MAKE_STRING(i8*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ELEMENTSOF(%struct.iovec*) #3

declare dso_local i64 @sendmsg(i64, %struct.msghdr*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
