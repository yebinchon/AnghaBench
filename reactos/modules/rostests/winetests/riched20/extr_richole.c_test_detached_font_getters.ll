; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_detached_font_getters.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_detached_font_getters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@CO_E_RELEASED = common dso_local global i64 0, align 8
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @test_detached_font_getters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_detached_font_getters(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @S_OK, align 8
  br label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @CO_E_RELEASED, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i64 [ %13, %12 ], [ %15, %14 ]
  store i64 %17, i64* %6, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @ITextFont_GetBold(i32* %18, i32* null)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @E_INVALIDARG, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @ITextFont_GetBold(i32* %26, i32* %7)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @ITextFont_GetForeColor(i32* %34, i32* null)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @E_INVALIDARG, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @ITextFont_GetForeColor(i32* %42, i32* %7)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i64 @ITextFont_GetItalic(i32* %50, i32* null)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @E_INVALIDARG, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i64 @ITextFont_GetItalic(i32* %58, i32* %7)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i64 @ITextFont_GetLanguageID(i32* %66, i32* null)
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @E_INVALIDARG, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i64 @ITextFont_GetLanguageID(i32* %74, i32* %7)
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i64 @ITextFont_GetName(i32* %82, i32* null)
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @E_INVALIDARG, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %88)
  %90 = load i32*, i32** %3, align 8
  %91 = call i64 @ITextFont_GetName(i32* %90, i32* %9)
  store i64 %91, i64* %5, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %96)
  %98 = load i32*, i32** %3, align 8
  %99 = call i64 @ITextFont_GetSize(i32* %98, float* null)
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* @E_INVALIDARG, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = call i64 @ITextFont_GetSize(i32* %106, float* %8)
  store i64 %107, i64* %5, align 8
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* %6, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i64, i64* %5, align 8
  %113 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %112)
  %114 = load i32*, i32** %3, align 8
  %115 = call i64 @ITextFont_GetStrikeThrough(i32* %114, i32* null)
  store i64 %115, i64* %5, align 8
  %116 = load i64, i64* %5, align 8
  %117 = load i64, i64* @E_INVALIDARG, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %5, align 8
  %121 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %120)
  %122 = load i32*, i32** %3, align 8
  %123 = call i64 @ITextFont_GetStrikeThrough(i32* %122, i32* %7)
  store i64 %123, i64* %5, align 8
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* %6, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %128)
  %130 = load i32*, i32** %3, align 8
  %131 = call i64 @ITextFont_GetSubscript(i32* %130, i32* null)
  store i64 %131, i64* %5, align 8
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* @E_INVALIDARG, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %5, align 8
  %137 = call i32 @ok(i32 %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %136)
  %138 = load i32*, i32** %3, align 8
  %139 = call i64 @ITextFont_GetSubscript(i32* %138, i32* %7)
  store i64 %139, i64* %5, align 8
  %140 = load i64, i64* %5, align 8
  %141 = load i64, i64* %6, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = load i64, i64* %5, align 8
  %145 = call i32 @ok(i32 %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %144)
  %146 = load i32*, i32** %3, align 8
  %147 = call i64 @ITextFont_GetSuperscript(i32* %146, i32* null)
  store i64 %147, i64* %5, align 8
  %148 = load i64, i64* %5, align 8
  %149 = load i64, i64* @E_INVALIDARG, align 8
  %150 = icmp eq i64 %148, %149
  %151 = zext i1 %150 to i32
  %152 = load i64, i64* %5, align 8
  %153 = call i32 @ok(i32 %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %152)
  %154 = load i32*, i32** %3, align 8
  %155 = call i64 @ITextFont_GetSuperscript(i32* %154, i32* %7)
  store i64 %155, i64* %5, align 8
  %156 = load i64, i64* %5, align 8
  %157 = load i64, i64* %6, align 8
  %158 = icmp eq i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i64, i64* %5, align 8
  %161 = call i32 @ok(i32 %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %160)
  %162 = load i32*, i32** %3, align 8
  %163 = call i64 @ITextFont_GetUnderline(i32* %162, i32* null)
  store i64 %163, i64* %5, align 8
  %164 = load i64, i64* %5, align 8
  %165 = load i64, i64* @E_INVALIDARG, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i64, i64* %5, align 8
  %169 = call i32 @ok(i32 %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %168)
  %170 = load i32*, i32** %3, align 8
  %171 = call i64 @ITextFont_GetUnderline(i32* %170, i32* %7)
  store i64 %171, i64* %5, align 8
  %172 = load i64, i64* %5, align 8
  %173 = load i64, i64* %6, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i64, i64* %5, align 8
  %177 = call i32 @ok(i32 %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %176)
  ret void
}

declare dso_local i64 @ITextFont_GetBold(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @ITextFont_GetForeColor(i32*, i32*) #1

declare dso_local i64 @ITextFont_GetItalic(i32*, i32*) #1

declare dso_local i64 @ITextFont_GetLanguageID(i32*, i32*) #1

declare dso_local i64 @ITextFont_GetName(i32*, i32*) #1

declare dso_local i64 @ITextFont_GetSize(i32*, float*) #1

declare dso_local i64 @ITextFont_GetStrikeThrough(i32*, i32*) #1

declare dso_local i64 @ITextFont_GetSubscript(i32*, i32*) #1

declare dso_local i64 @ITextFont_GetSuperscript(i32*, i32*) #1

declare dso_local i64 @ITextFont_GetUnderline(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
