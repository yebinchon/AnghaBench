; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_count_block_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_count_block_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_opt = common dso_local global i32* null, align 8
@BP_SPRINTF_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"[%s] %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"deferred free\00", align 1
@ZDB_OT_DEFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @count_block_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_block_cb(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** @dump_opt, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 98
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 5
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i32, i32* @BP_SPRINTF_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = trunc i64 %18 to i32
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @snprintf_blkptr(i8* %20, i32 %21, i32* %22)
  %24 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %25 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %25)
  br label %26

26:                                               ; preds = %16, %3
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @ZDB_OT_DEFERRED, align 4
  %30 = call i32 @zdb_count_block(i32* %27, i32* null, i32* %28, i32 %29)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf_blkptr(i8*, i32, i32*) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @zdb_count_block(i32*, i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
