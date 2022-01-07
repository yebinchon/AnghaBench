; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_merge.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"failed to create himl1\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to create himl2\0A\00", align 1
@hinst = common dso_local global i32 0, align 4
@icon_bits = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to create hicon1\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to add icon1 to himl2.\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"add icon1 to himl2\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"merge himl1,-1 failed\0A\00", align 1
@empty_bits = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"merge himl1,-1\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"merge himl1,0 failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"merge himl1,0\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"failed to recreate himl2\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"merge himl2,-1 failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"merge himl2,-1\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"merge himl2,0 failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"merge himl2,0\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Failed to re-add icon1 to himl2.\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"merge himl2 with itself failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"merge himl2 with itself\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Failed to add icon1 to himl1.\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"merge himl1 with himl2 failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"merge himl1 with himl2\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"merge himl1 with himl2 8,16 failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"merge himl1 with himl2, 8,16\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_merge() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = call i32 (...) @create_window()
  store i32 %6, i32* %5, align 4
  %7 = call i32* @pImageList_Create(i32 32, i32 32, i32 0, i32 0, i32 3)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = call i32* @pImageList_Create(i32 32, i32 32, i32 0, i32 0, i32 3)
  store i32* %12, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @hinst, align 4
  %18 = load i32, i32* @icon_bits, align 4
  %19 = load i32, i32* @icon_bits, align 4
  %20 = call i32* @CreateIcon(i32 %17, i32 32, i32 32, i32 1, i32 1, i32 %18, i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32*, i32** %1, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %0
  %28 = load i32*, i32** %2, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %27, %0
  br label %167

34:                                               ; preds = %30
  %35 = load i32*, i32** %2, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i64 @pImageList_ReplaceIcon(i32* %35, i32 -1, i32* %36)
  %38 = icmp eq i64 0, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* %5, align 4
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* @icon_bits, align 4
  %44 = call i32 @check_bits(i32 %41, i32* %42, i32 0, i32 32, i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32*, i32** %1, align 8
  %46 = load i32*, i32** %2, align 8
  %47 = call i32* @pImageList_Merge(i32* %45, i32 -1, i32* %46, i32 0, i32 0, i32 0)
  store i32* %47, i32** %3, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i32, i32* %5, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* @empty_bits, align 4
  %55 = call i32 @check_bits(i32 %52, i32* %53, i32 0, i32 32, i32 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @pImageList_Destroy(i32* %56)
  %58 = load i32*, i32** %1, align 8
  %59 = load i32*, i32** %2, align 8
  %60 = call i32* @pImageList_Merge(i32* %58, i32 0, i32* %59, i32 0, i32 0, i32 0)
  store i32* %60, i32** %3, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = icmp ne i32* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %65 = load i32, i32* %5, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* @empty_bits, align 4
  %68 = call i32 @check_bits(i32 %65, i32* %66, i32 0, i32 32, i32 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @pImageList_Destroy(i32* %69)
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @pImageList_Destroy(i32* %71)
  %73 = call i32* @pImageList_Create(i32 32, i32 32, i32 0, i32 0, i32 3)
  store i32* %73, i32** %2, align 8
  %74 = load i32*, i32** %2, align 8
  %75 = icmp ne i32* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %78 = load i32*, i32** %2, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %34
  br label %167

81:                                               ; preds = %34
  %82 = load i32*, i32** %1, align 8
  %83 = load i32*, i32** %2, align 8
  %84 = call i32* @pImageList_Merge(i32* %82, i32 -1, i32* %83, i32 -1, i32 0, i32 0)
  store i32* %84, i32** %3, align 8
  %85 = load i32*, i32** %3, align 8
  %86 = icmp ne i32* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %89 = load i32, i32* %5, align 4
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* @empty_bits, align 4
  %92 = call i32 @check_bits(i32 %89, i32* %90, i32 0, i32 32, i32 %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @pImageList_Destroy(i32* %93)
  %95 = load i32*, i32** %1, align 8
  %96 = load i32*, i32** %2, align 8
  %97 = call i32* @pImageList_Merge(i32* %95, i32 -1, i32* %96, i32 0, i32 0, i32 0)
  store i32* %97, i32** %3, align 8
  %98 = load i32*, i32** %3, align 8
  %99 = icmp ne i32* %98, null
  %100 = zext i1 %99 to i32
  %101 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %102 = load i32, i32* %5, align 4
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* @empty_bits, align 4
  %105 = call i32 @check_bits(i32 %102, i32* %103, i32 0, i32 32, i32 %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @pImageList_Destroy(i32* %106)
  %108 = load i32*, i32** %2, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = call i64 @pImageList_ReplaceIcon(i32* %108, i32 -1, i32* %109)
  %111 = icmp eq i64 0, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %114 = load i32*, i32** %2, align 8
  %115 = load i32*, i32** %2, align 8
  %116 = call i32* @pImageList_Merge(i32* %114, i32 0, i32* %115, i32 0, i32 0, i32 0)
  store i32* %116, i32** %3, align 8
  %117 = load i32*, i32** %3, align 8
  %118 = icmp ne i32* %117, null
  %119 = zext i1 %118 to i32
  %120 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %121 = load i32, i32* %5, align 4
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* @empty_bits, align 4
  %124 = call i32 @check_bits(i32 %121, i32* %122, i32 0, i32 32, i32 %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @pImageList_Destroy(i32* %125)
  %127 = load i32*, i32** %1, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = call i64 @pImageList_ReplaceIcon(i32* %127, i32 -1, i32* %128)
  %130 = icmp eq i64 0, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @ok(i32 %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %133 = load i32*, i32** %1, align 8
  %134 = load i32*, i32** %2, align 8
  %135 = call i32* @pImageList_Merge(i32* %133, i32 0, i32* %134, i32 0, i32 0, i32 0)
  store i32* %135, i32** %3, align 8
  %136 = load i32*, i32** %3, align 8
  %137 = icmp ne i32* %136, null
  %138 = zext i1 %137 to i32
  %139 = call i32 @ok(i32 %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0))
  %140 = load i32, i32* %5, align 4
  %141 = load i32*, i32** %3, align 8
  %142 = load i32, i32* @empty_bits, align 4
  %143 = call i32 @check_bits(i32 %140, i32* %141, i32 0, i32 32, i32 %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @pImageList_Destroy(i32* %144)
  %146 = load i32*, i32** %1, align 8
  %147 = load i32*, i32** %2, align 8
  %148 = call i32* @pImageList_Merge(i32* %146, i32 0, i32* %147, i32 0, i32 8, i32 16)
  store i32* %148, i32** %3, align 8
  %149 = load i32*, i32** %3, align 8
  %150 = icmp ne i32* %149, null
  %151 = zext i1 %150 to i32
  %152 = call i32 @ok(i32 %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  %153 = load i32, i32* %5, align 4
  %154 = load i32*, i32** %3, align 8
  %155 = load i32, i32* @empty_bits, align 4
  %156 = call i32 @check_bits(i32 %153, i32* %154, i32 0, i32 32, i32 %155, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  %157 = load i32*, i32** %3, align 8
  %158 = call i32 @pImageList_Destroy(i32* %157)
  %159 = load i32*, i32** %1, align 8
  %160 = call i32 @pImageList_Destroy(i32* %159)
  %161 = load i32*, i32** %2, align 8
  %162 = call i32 @pImageList_Destroy(i32* %161)
  %163 = load i32*, i32** %4, align 8
  %164 = call i32 @DestroyIcon(i32* %163)
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @DestroyWindow(i32 %165)
  br label %167

167:                                              ; preds = %81, %80, %33
  ret void
}

declare dso_local i32 @create_window(...) #1

declare dso_local i32* @pImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32* @CreateIcon(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @pImageList_ReplaceIcon(i32*, i32, i32*) #1

declare dso_local i32 @check_bits(i32, i32*, i32, i32, i32, i8*) #1

declare dso_local i32* @pImageList_Merge(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @pImageList_Destroy(i32*) #1

declare dso_local i32 @DestroyIcon(i32*) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
