; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_test_WM_GETTEXT.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_test_WM_GETTEXT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_WM_GETTEXT.text = internal constant [28 x i8] c"Hello. My name is RichEdit!\00", align 16
@test_WM_GETTEXT.text2 = internal constant [29 x i8] c"Hello. My name is RichEdit!\0D\00", align 16
@test_WM_GETTEXT.text2_after = internal constant [30 x i8] c"Hello. My name is RichEdit!\0D\0A\00", align 16
@WM_SETTEXT = common dso_local global i32 0, align 4
@WM_GETTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WM_GETTEXT returned %d, expected %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"WM_GETTEXT: settext and gettext differ. strcmp: %d\0A\00", align 1
@WM_GETTEXTLENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"WM_GETTEXTLENGTH reports incorrect length %d, expected %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"WM_GETTEXT returned %d, expected 0 or %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WM_GETTEXT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WM_GETTEXT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i32, align 4
  %4 = call i32 @new_richedit(i32* null)
  store i32 %4, i32* %1, align 4
  %5 = bitcast [1024 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 1024, i1 false)
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @WM_SETTEXT, align 4
  %8 = call i32 @SendMessageA(i32 %6, i32 %7, i32 0, i32 ptrtoint ([28 x i8]* @test_WM_GETTEXT.text to i32))
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @WM_GETTEXT, align 4
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %12 = ptrtoint i8* %11 to i32
  %13 = call i32 @SendMessageA(i32 %9, i32 %10, i32 1024, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %16 = call i32 @lstrlenA(i8* %15)
  %17 = icmp eq i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %3, align 4
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %21 = call i32 @lstrlenA(i8* %20)
  %22 = call i32 (i32, i8*, i32, ...) @ok(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @WM_GETTEXT, align 4
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %26 = ptrtoint i8* %25 to i32
  %27 = call i32 @SendMessageA(i32 %23, i32 %24, i32 1024, i32 %26)
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @test_WM_GETTEXT.text, i64 0, i64 0))
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %3, align 4
  %34 = call i32 (i32, i8*, i32, ...) @ok(i32 %32, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @WM_GETTEXTLENGTH, align 4
  %37 = call i32 @SendMessageA(i32 %35, i32 %36, i32 0, i32 0)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @lstrlenA(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @test_WM_GETTEXT.text, i64 0, i64 0))
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @lstrlenA(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @test_WM_GETTEXT.text, i64 0, i64 0))
  %44 = call i32 (i32, i8*, i32, ...) @ok(i32 %41, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %43)
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %46 = call i32 @memset(i8* %45, i32 0, i32 1024)
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @WM_GETTEXT, align 4
  %49 = call i32 @strlen(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @test_WM_GETTEXT.text, i64 0, i64 0))
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %51 = ptrtoint i8* %50 to i32
  %52 = call i32 @SendMessageA(i32 %47, i32 %48, i32 %49, i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %0
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @lstrlenA(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @test_WM_GETTEXT.text, i64 0, i64 0))
  %58 = sub nsw i32 %57, 1
  %59 = icmp eq i32 %56, %58
  br label %60

60:                                               ; preds = %55, %0
  %61 = phi i1 [ true, %0 ], [ %59, %55 ]
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @lstrlenA(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @test_WM_GETTEXT.text, i64 0, i64 0))
  %65 = sub nsw i32 %64, 1
  %66 = call i32 (i32, i8*, i32, ...) @ok(i32 %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %65)
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @test_WM_GETTEXT.text, i64 0, i64 0))
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %73 = call i32 @lstrlenA(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @test_WM_GETTEXT.text, i64 0, i64 0))
  %74 = sub nsw i32 %73, 1
  %75 = call i32 @strncmp(i8* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @test_WM_GETTEXT.text, i64 0, i64 0), i32 %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %60
  %77 = load i32, i32* %3, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %3, align 4
  %81 = call i32 (i32, i8*, i32, ...) @ok(i32 %79, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %1, align 4
  %83 = load i32, i32* @WM_SETTEXT, align 4
  %84 = call i32 @SendMessageA(i32 %82, i32 %83, i32 0, i32 ptrtoint ([29 x i8]* @test_WM_GETTEXT.text2 to i32))
  %85 = load i32, i32* %1, align 4
  %86 = load i32, i32* @WM_GETTEXT, align 4
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %88 = ptrtoint i8* %87 to i32
  %89 = call i32 @SendMessageA(i32 %85, i32 %86, i32 1024, i32 %88)
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %92 = call i32 @lstrlenA(i8* %91)
  %93 = icmp eq i32 %90, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %3, align 4
  %96 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %97 = call i32 @lstrlenA(i8* %96)
  %98 = call i32 (i32, i8*, i32, ...) @ok(i32 %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %97)
  %99 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @test_WM_GETTEXT.text2_after, i64 0, i64 0))
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %3, align 4
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %3, align 4
  %105 = call i32 (i32, i8*, i32, ...) @ok(i32 %103, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %1, align 4
  %107 = load i32, i32* @WM_GETTEXTLENGTH, align 4
  %108 = call i32 @SendMessageA(i32 %106, i32 %107, i32 0, i32 0)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @lstrlenA(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @test_WM_GETTEXT.text2_after, i64 0, i64 0))
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @lstrlenA(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @test_WM_GETTEXT.text2_after, i64 0, i64 0))
  %115 = call i32 (i32, i8*, i32, ...) @ok(i32 %112, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %114)
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %117 = call i32 @memset(i8* %116, i32 0, i32 1024)
  %118 = load i32, i32* %1, align 4
  %119 = load i32, i32* @WM_GETTEXT, align 4
  %120 = call i32 @strlen(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WM_GETTEXT.text2, i64 0, i64 0))
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %122 = ptrtoint i8* %121 to i32
  %123 = call i32 @SendMessageA(i32 %118, i32 %119, i32 %120, i32 %122)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %3, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %76
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @lstrlenA(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WM_GETTEXT.text2, i64 0, i64 0))
  %129 = sub nsw i32 %128, 1
  %130 = icmp eq i32 %127, %129
  br label %131

131:                                              ; preds = %126, %76
  %132 = phi i1 [ true, %76 ], [ %130, %126 ]
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @lstrlenA(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WM_GETTEXT.text2, i64 0, i64 0))
  %136 = sub nsw i32 %135, 1
  %137 = call i32 (i32, i8*, i32, ...) @ok(i32 %133, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %134, i32 %136)
  %138 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WM_GETTEXT.text2, i64 0, i64 0))
  store i32 %139, i32* %3, align 4
  %140 = load i32, i32* %3, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %131
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %144 = call i32 @lstrlenA(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WM_GETTEXT.text2, i64 0, i64 0))
  %145 = sub nsw i32 %144, 1
  %146 = call i32 @strncmp(i8* %143, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WM_GETTEXT.text2, i64 0, i64 0), i32 %145)
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %142, %131
  %148 = load i32, i32* %3, align 4
  %149 = icmp eq i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %3, align 4
  %152 = call i32 (i32, i8*, i32, ...) @ok(i32 %150, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %1, align 4
  %154 = call i32 @DestroyWindow(i32 %153)
  ret void
}

declare dso_local i32 @new_richedit(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @lstrlenA(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
