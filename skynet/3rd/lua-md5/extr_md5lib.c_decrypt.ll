; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua-md5/extr_md5lib.c_decrypt.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua-md5/extr_md5lib.c_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCKSIZE = common dso_local global i64 0, align 8
@MAXKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid cyphered string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decrypt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @luaL_checklstring(i32* %10, i32 1, i64* %3)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8* %17, i8** %6, align 8
  %18 = load i64, i64* @BLOCKSIZE, align 8
  %19 = load i32, i32* @MAXKEY, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %18, %20
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  %28 = icmp uge i64 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @BLOCKSIZE, align 8
  %32 = icmp ule i64 %30, %31
  br label %33

33:                                               ; preds = %29, %1
  %34 = phi i1 [ false, %1 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @luaL_argcheck(i32* %24, i32 %35, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 1
  %43 = load i64, i64* %3, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %3, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @initblock(i32* %45, i8* %46, i64 %47, i8* %23)
  store i32 %48, i32* %7, align 4
  %49 = load i32*, i32** %2, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @decodestream(i32* %49, i8* %50, i64 %51, i8* %23, i32 %52)
  %54 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %54)
  ret i32 1
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @initblock(i32*, i8*, i64, i8*) #1

declare dso_local i32 @decodestream(i32*, i8*, i64, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
