; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lobject.c_l_str2d.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lobject.c_l_str2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c".xXnN\00", align 1
@L_MAXLENNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @l_str2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @l_str2d(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strpbrk(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @cast_uchar(i8 signext %19)
  %21 = call i32 @ltolower(i32 %20)
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i32 [ %21, %17 ], [ 0, %22 ]
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 110
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8* null, i8** %3, align 8
  br label %80

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i8* @l_str2dloc(i8* %29, i32* %30, i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %78

35:                                               ; preds = %28
  %36 = load i32, i32* @L_MAXLENNUM, align 4
  %37 = add nsw i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %9, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %10, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i8* @strchr(i8* %41, i8 signext 46)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = load i32, i32* @L_MAXLENNUM, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %35
  %48 = load i8*, i8** %11, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %35
  store i8* null, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %74

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strcpy(i8* %40, i8* %52)
  %54 = call signext i8 (...) @lua_getlocaledecpoint()
  %55 = load i8*, i8** %11, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = getelementptr inbounds i8, i8* %40, i64 %59
  store i8 %54, i8* %60, align 1
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i8* @l_str2dloc(i8* %40, i32* %61, i32 %62)
  store i8* %63, i8** %6, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %51
  %67 = load i8*, i8** %4, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = ptrtoint i8* %40 to i64
  %71 = sub i64 %69, %70
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  store i8* %72, i8** %6, align 8
  br label %73

73:                                               ; preds = %66, %51
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %73, %50
  %75 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %12, align 4
  switch i32 %76, label %82 [
    i32 0, label %77
    i32 1, label %80
  ]

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %77, %28
  %79 = load i8*, i8** %6, align 8
  store i8* %79, i8** %3, align 8
  br label %80

80:                                               ; preds = %78, %74, %27
  %81 = load i8*, i8** %3, align 8
  ret i8* %81

82:                                               ; preds = %74
  unreachable
}

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @ltolower(i32) #1

declare dso_local i32 @cast_uchar(i8 signext) #1

declare dso_local i8* @l_str2dloc(i8*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local signext i8 @lua_getlocaledecpoint(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
