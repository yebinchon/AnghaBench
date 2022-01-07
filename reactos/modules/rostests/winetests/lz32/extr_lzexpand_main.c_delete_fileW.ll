; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/lz32/extr_lzexpand_main.c_delete_fileW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/lz32/extr_lzexpand_main.c_delete_fileW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@OF_DELETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"LZOpenFileW failed on delete\0A\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"GetFileAttributesW succeeded on deleted file ('%s')\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @delete_fileW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_fileW(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @OF_DELETE, align 4
  %8 = call i64 @LZOpenFileW(i32* %6, %struct.TYPE_3__* %4, i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp sge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @LZClose(i64 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @GetFileAttributesW(i32* %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  ret void
}

declare dso_local i64 @LZOpenFileW(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @LZClose(i64) #1

declare dso_local i64 @GetFileAttributesW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
