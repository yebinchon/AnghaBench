; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comdlg32/extr_itemdlg.c_test_filename.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comdlg32/extr_itemdlg.c_test_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@MAX_PATH = common dso_local global i32 0, align 4
@test_filename.filename_noextW = internal constant [9 x i8] c"winetest\00", align 1
@test_filename.filename_dotextW = internal constant [10 x i8] c"winetest.\00", align 1
@test_filename.filename_dotanddefW = internal constant [14 x i8] c"winetest..wte\00", align 1
@test_filename.filename_defextW = internal constant [13 x i8] c"winetest.wte\00", align 1
@test_filename.filename_ext1W = internal constant [13 x i8] c"winetest.wt1\00", align 1
@test_filename.filename_ext2W = internal constant [13 x i8] c"winetest.wt2\00", align 1
@test_filename.filename_ext1anddefW = internal constant [17 x i8] c"winetest.wt1.wte\00", align 16
@test_filename.defextW = internal constant [4 x i8] c"wte\00", align 1
@test_filename.desc1 = internal constant [13 x i8] c"description1\00", align 1
@test_filename.desc2 = internal constant [13 x i8] c"description2\00", align 1
@test_filename.descdef = internal constant [13 x i8] c"default desc\00", align 1
@test_filename.ext1 = internal constant [6 x i8] c"*.wt1\00", align 1
@test_filename.ext2 = internal constant [6 x i8] c"*.wt2\00", align 1
@test_filename.extdef = internal constant [6 x i8] c"*.wte\00", align 1
@test_filename.complexext = internal constant [12 x i8] c"*.wt2;*.wt1\00", align 1
@test_filename.filterspec = internal constant [3 x %struct.TYPE_4__] [%struct.TYPE_4__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.desc1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_filename.ext1, i32 0, i32 0) }, %struct.TYPE_4__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.desc2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_filename.ext2, i32 0, i32 0) }, %struct.TYPE_4__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.descdef, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_filename.extdef, i32 0, i32 0) }], align 16
@test_filename.filterspec2 = internal constant [1 x %struct.TYPE_4__] [%struct.TYPE_4__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.desc1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_filename.complexext, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [41 x i8] c"SHCreateItemFromParsingName is missing.\0A\00", align 1
@IID_IShellItem = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_filename() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = call i32 @test_filename_savedlg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_filename.filename_noextW, i64 0, i64 0), i8* null, %struct.TYPE_4__* null, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_filename.filename_noextW, i64 0, i64 0))
  %10 = call i32 @test_filename_savedlg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_filename.filename_noextW, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_filename.defextW, i64 0, i64 0), %struct.TYPE_4__* null, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.filename_defextW, i64 0, i64 0))
  %11 = call i32 @test_filename_savedlg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_filename.filename_dotextW, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_filename.defextW, i64 0, i64 0), %struct.TYPE_4__* null, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_filename.filename_dotanddefW, i64 0, i64 0))
  %12 = call i32 @test_filename_savedlg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.filename_defextW, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_filename.defextW, i64 0, i64 0), %struct.TYPE_4__* null, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.filename_defextW, i64 0, i64 0))
  %13 = call i32 @test_filename_savedlg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.filename_ext1W, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_filename.defextW, i64 0, i64 0), %struct.TYPE_4__* null, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @test_filename.filename_ext1anddefW, i64 0, i64 0))
  %14 = call i32 @test_filename_savedlg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_filename.filename_noextW, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_filename.defextW, i64 0, i64 0), %struct.TYPE_4__* getelementptr inbounds ([3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* @test_filename.filterspec, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.filename_ext1W, i64 0, i64 0))
  %15 = call i32 @test_filename_savedlg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_filename.filename_noextW, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_filename.defextW, i64 0, i64 0), %struct.TYPE_4__* getelementptr inbounds ([3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* @test_filename.filterspec, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.filename_ext1W, i64 0, i64 0))
  %16 = call i32 @test_filename_savedlg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_filename.filename_noextW, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_filename.defextW, i64 0, i64 0), %struct.TYPE_4__* getelementptr inbounds ([1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* @test_filename.filterspec2, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.filename_ext2W, i64 0, i64 0))
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = call i32 @GetCurrentDirectoryW(i32 %17, i8* %8)
  %19 = call i32 (i32, i8*, ...) @ok(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = bitcast i32** %1 to i8**
  %21 = call i64 @pSHCreateItemFromParsingName(i8* %8, i32* null, i32* @IID_IShellItem, i8** %20)
  store i64 %21, i64* %2, align 8
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %2, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = call i32 @touch_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_filename.filename_noextW, i64 0, i64 0))
  %29 = call i32 @touch_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.filename_defextW, i64 0, i64 0))
  %30 = call i32 @touch_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.filename_ext2W, i64 0, i64 0))
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @test_filename_opendlg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_filename.filename_noextW, i64 0, i64 0), i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_filename.defextW, i64 0, i64 0), %struct.TYPE_4__* null, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_filename.filename_noextW, i64 0, i64 0))
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @test_filename_opendlg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_filename.filename_noextW, i64 0, i64 0), i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_filename.defextW, i64 0, i64 0), %struct.TYPE_4__* getelementptr inbounds ([3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* @test_filename.filterspec, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_filename.filename_noextW, i64 0, i64 0))
  %35 = call i32 @DeleteFileW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_filename.filename_noextW, i64 0, i64 0))
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @test_filename_opendlg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_filename.filename_noextW, i64 0, i64 0), i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_filename.defextW, i64 0, i64 0), %struct.TYPE_4__* null, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.filename_defextW, i64 0, i64 0))
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @IShellItem_Release(i32* %38)
  %40 = call i32 @DeleteFileW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.filename_defextW, i64 0, i64 0))
  %41 = call i32 @DeleteFileW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_filename.filename_ext2W, i64 0, i64 0))
  %42 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %42)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @test_filename_savedlg(i8*, i8*, %struct.TYPE_4__*, i32, i8*) #2

declare dso_local i32 @GetCurrentDirectoryW(i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @pSHCreateItemFromParsingName(i8*, i32*, i32*, i8**) #2

declare dso_local i32 @touch_file(i8*) #2

declare dso_local i32 @test_filename_opendlg(i8*, i32*, i8*, %struct.TYPE_4__*, i32, i8*) #2

declare dso_local i32 @DeleteFileW(i8*) #2

declare dso_local i32 @IShellItem_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
