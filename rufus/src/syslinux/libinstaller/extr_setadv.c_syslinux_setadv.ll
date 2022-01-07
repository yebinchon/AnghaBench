; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_setadv.c_syslinux_setadv.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_setadv.c_syslinux_setadv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADV_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ADV_LEN = common dso_local global i64 0, align 8
@syslinux_adv = common dso_local global i32* null, align 8
@ADV_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @syslinux_setadv(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* @ADV_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sub i32 %19, 1
  %21 = icmp ugt i32 %20, 254
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %123

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = icmp ugt i64 %25, 255
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @ENOSPC, align 4
  store i32 %28, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %123

29:                                               ; preds = %24
  %30 = load i64, i64* @ADV_LEN, align 8
  store i64 %30, i64* %9, align 8
  store i32* %18, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** @syslinux_adv, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @memcpy(i32* %31, i32* %33, i64 %34)
  br label %36

36:                                               ; preds = %82, %29
  %37 = load i64, i64* %9, align 8
  %38 = icmp uge i64 %37, 2
  br i1 %38, label %39, label %83

39:                                               ; preds = %36
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %14, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @ADV_END, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %83

52:                                               ; preds = %39
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp uge i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %83

61:                                               ; preds = %56
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* %14, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %14, align 8
  %68 = sub i64 %66, %67
  %69 = call i32 @memmove(i32* %62, i32* %65, i64 %68)
  br label %82

70:                                               ; preds = %52
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %83

75:                                               ; preds = %70
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %9, align 8
  %78 = sub i64 %77, %76
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 %79
  store i32* %81, i32** %8, align 8
  br label %82

82:                                               ; preds = %75, %61
  br label %36

83:                                               ; preds = %74, %60, %51, %36
  %84 = load i64, i64* %6, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %83
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %6, align 8
  %89 = add i64 %88, 2
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @ENOSPC, align 4
  store i32 %92, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %123

93:                                               ; preds = %86
  %94 = load i32, i32* %5, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  %97 = load i64, i64* %6, align 8
  %98 = trunc i64 %97 to i32
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %8, align 8
  store i32 %98, i32* %99, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = bitcast i8* %102 to i32*
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @memcpy(i32* %101, i32* %103, i64 %104)
  %106 = load i64, i64* %6, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 %106
  store i32* %108, i32** %8, align 8
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, 2
  %111 = load i64, i64* %9, align 8
  %112 = sub i64 %111, %110
  store i64 %112, i64* %9, align 8
  br label %113

113:                                              ; preds = %93, %83
  %114 = load i32*, i32** %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @memset(i32* %114, i32 0, i64 %115)
  %117 = load i32*, i32** @syslinux_adv, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 8
  %119 = load i64, i64* @ADV_LEN, align 8
  %120 = call i32 @memcpy(i32* %118, i32* %18, i64 %119)
  %121 = load i32*, i32** @syslinux_adv, align 8
  %122 = call i32 @cleanup_adv(i32* %121)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %123

123:                                              ; preds = %113, %91, %27, %22
  %124 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @memmove(i32*, i32*, i64) #2

declare dso_local i32 @memset(i32*, i32, i64) #2

declare dso_local i32 @cleanup_adv(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
