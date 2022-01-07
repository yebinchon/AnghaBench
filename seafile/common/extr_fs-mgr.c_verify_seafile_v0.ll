; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_verify_seafile_v0.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_verify_seafile_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"[fs mgr] Corrupt seafile object %s.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SEAF_METADATA_TYPE_FILE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"[fd mgr] %s is not a file.\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"[fs mgr] Bad seafile id list length %d.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@G_CHECKSUM_SHA1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @verify_seafile_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_seafile_v0(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [20 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca [41 x i8], align 16
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %10, align 8
  store i32 20, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 8
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %5, align 4
  br label %81

25:                                               ; preds = %4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ntohl(i32 %28)
  %30 = load i64, i64* @SEAF_METADATA_TYPE_FILE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %5, align 4
  br label %81

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = srem i32 %41, 20
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* %15, align 4
  %46 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %5, align 4
  br label %81

48:                                               ; preds = %36
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %5, align 4
  br label %81

53:                                               ; preds = %48
  %54 = load i32, i32* @G_CHECKSUM_SHA1, align 4
  %55 = call i32* @g_checksum_new(i32 %54)
  store i32* %55, i32** %11, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %61, 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @g_checksum_update(i32* %56, i32 %59, i32 %63)
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 0
  %67 = call i32 @g_checksum_get_digest(i32* %65, i32* %66, i32* %13)
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @g_checksum_free(i32* %68)
  %70 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 0
  %71 = getelementptr inbounds [41 x i8], [41 x i8]* %14, i64 0, i64 0
  %72 = call i32 @rawdata_to_hex(i32* %70, i8* %71, i32 20)
  %73 = getelementptr inbounds [41 x i8], [41 x i8]* %14, i64 0, i64 0
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @strcmp(i8* %73, i8* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %53
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %5, align 4
  br label %81

79:                                               ; preds = %53
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %77, %51, %44, %32, %21
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32* @g_checksum_new(i32) #1

declare dso_local i32 @g_checksum_update(i32*, i32, i32) #1

declare dso_local i32 @g_checksum_get_digest(i32*, i32*, i32*) #1

declare dso_local i32 @g_checksum_free(i32*) #1

declare dso_local i32 @rawdata_to_hex(i32*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
