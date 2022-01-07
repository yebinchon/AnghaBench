; ModuleID = '/home/carl/AnghaBench/seafile/common/cdc/extr_cdc.c_default_write_chunk.c'
source_filename = "/home/carl/AnghaBench/seafile/common/cdc/extr_cdc.c_default_write_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@NAME_MAX_SZ = common dso_local global i32 0, align 4
@CHECKSUM_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"./%s\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @default_write_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_write_chunk(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %10 = load i32, i32* @NAME_MAX_SZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @CHECKSUM_LENGTH, align 4
  %15 = mul nsw i32 %14, 2
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %19 = trunc i64 %17 to i32
  %20 = call i32 @memset(i8* %18, i32 0, i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CHECKSUM_LENGTH, align 4
  %25 = call i32 @rawdata_to_hex(i32 %23, i8* %18, i32 %24)
  %26 = load i32, i32* @NAME_MAX_SZ, align 4
  %27 = call i32 @snprintf(i8* %13, i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %18)
  %28 = load i32, i32* @O_RDWR, align 4
  %29 = load i32, i32* @O_CREAT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @O_BINARY, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @g_open(i8* %13, i32 %32, i32 420)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %49

37:                                               ; preds = %1
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @writen(i32 %38, i32 %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %37, %36
  %50 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @rawdata_to_hex(i32, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @g_open(i8*, i32, i32) #2

declare dso_local i32 @writen(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
