; ModuleID = '/home/carl/AnghaBench/upx/src/stub/tools/armpe/extr_armpe_tester.c_reloc.c'
source_filename = "/home/carl/AnghaBench/upx/src/stub/tools/armpe/extr_armpe_tester.c_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@ih = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PEDIR_RELOC = common dso_local global i64 0, align 8
@vaddr = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"only 1 page can be relocated\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unknown relocation type: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reloc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ih, i32 0, i32 1), align 8
  %9 = load i64, i64* @PEDIR_RELOC, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %82

15:                                               ; preds = %0
  %16 = load i8*, i8** @vaddr, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ih, i32 0, i32 1), align 8
  %18 = load i64, i64* @PEDIR_RELOC, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr i8, i8* %16, i64 %21
  store i8* %22, i8** %2, align 8
  %23 = load i8*, i8** @vaddr, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @get_le32(i8* %24)
  %26 = zext i32 %25 to i64
  %27 = getelementptr i8, i8* %23, i64 %26
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr i8, i8* %28, i64 4
  %30 = call i32 @get_le32(i8* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ih, i32 0, i32 1), align 8
  %33 = load i64, i64* @PEDIR_RELOC, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %31, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %15
  %39 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %1, align 4
  br label %82

40:                                               ; preds = %15
  %41 = load i32, i32* %4, align 4
  %42 = sub i32 %41, 8
  %43 = udiv i32 %42, 2
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %66, %58, %40
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, -1
  store i32 %46, i32* %5, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %44
  %49 = load i8*, i8** %2, align 8
  %50 = getelementptr i8, i8* %49, i64 8
  %51 = load i32, i32* %5, align 4
  %52 = mul i32 %51, 2
  %53 = zext i32 %52 to i64
  %54 = getelementptr i8, i8* %50, i64 %53
  %55 = call i32 @get_le16(i8* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %44

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 61440
  %62 = icmp ne i32 %61, 12288
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  store i32 %65, i32* %1, align 4
  br label %82

66:                                               ; preds = %59
  %67 = load i8*, i8** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 4095
  %70 = zext i32 %69 to i64
  %71 = getelementptr i8, i8* %67, i64 %70
  store i8* %71, i8** %7, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @get_le32(i8* %73)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ih, i32 0, i32 0), align 8
  %76 = sub i32 %74, %75
  %77 = load i8*, i8** @vaddr, align 8
  %78 = ptrtoint i8* %77 to i32
  %79 = add i32 %76, %78
  %80 = call i32 @set_le32(i8* %72, i32 %79)
  br label %44

81:                                               ; preds = %44
  store i32 0, i32* %1, align 4
  br label %82

82:                                               ; preds = %81, %63, %38, %14
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i32 @get_le32(i8*) #1

declare dso_local i32 @print(i8*, ...) #1

declare dso_local i32 @get_le16(i8*) #1

declare dso_local i32 @set_le32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
