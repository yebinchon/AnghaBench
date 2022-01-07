; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_test_TM_PLAINTEXT.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_test_TM_PLAINTEXT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@WM_SETTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EM_SETTEXTMODE = common dso_local global i32 0, align 4
@TM_PLAINTEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Is Wine an emulator? No it's not\00", align 1
@EM_EXSETSEL = common dso_local global i32 0, align 4
@EM_GETCHARFORMAT = common dso_local global i32 0, align 4
@SCF_DEFAULT = common dso_local global i32 0, align 4
@CFM_BOLD = common dso_local global i32 0, align 4
@CFE_BOLD = common dso_local global i32 0, align 4
@EM_SETCHARFORMAT = common dso_local global i32 0, align 4
@SCF_SELECTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"EM_SETCHARFORMAT returned %d instead of 0\0A\00", align 1
@SCF_WORD = common dso_local global i32 0, align 4
@SCF_ALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"EM_SETCHARFORMAT returned %d instead of 1\0A\00", align 1
@.str.4 = private unnamed_addr constant [110 x i8] c"two selections' formats differ - cf2.dwMask: %x, cf2test.dwMask %x, cf2.dwEffects: %x, cf2test.dwEffects: %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"wine\00", align 1
@WM_COPY = common dso_local global i32 0, align 4
@TM_RICHTEXT = common dso_local global i32 0, align 4
@CFM_ITALIC = common dso_local global i32 0, align 4
@CFE_ITALIC = common dso_local global i32 0, align 4
@WM_PASTE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [112 x i8] c"Copied text retained formatting - cf2.dwMask: %x, cf2test.dwMask: %x, cf2.dwEffects: %x, cf2test.dwEffects: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_TM_PLAINTEXT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_TM_PLAINTEXT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @new_richedit(i32* null)
  store i32 %6, i32* %1, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @WM_SETTEXT, align 4
  %9 = call i32 @SendMessageA(i32 %7, i32 %8, i32 0, i32 ptrtoint ([1 x i8]* @.str to i32))
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @EM_SETTEXTMODE, align 4
  %12 = load i32, i32* @TM_PLAINTEXT, align 4
  %13 = call i32 @SendMessageA(i32 %10, i32 %11, i32 %12, i32 0)
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @WM_SETTEXT, align 4
  %16 = call i32 @SendMessageA(i32 %14, i32 %15, i32 0, i32 ptrtoint ([33 x i8]* @.str.1 to i32))
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 10, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32 20, i32* %18, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @EM_EXSETSEL, align 4
  %21 = ptrtoint %struct.TYPE_3__* %4 to i32
  %22 = call i32 @SendMessageA(i32 %19, i32 %20, i32 0, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 12, i32* %23, align 4
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @EM_GETCHARFORMAT, align 4
  %26 = load i32, i32* @SCF_DEFAULT, align 4
  %27 = ptrtoint %struct.TYPE_4__* %2 to i32
  %28 = call i32 @SendMessageA(i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @CFM_BOLD, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %29, %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @CFE_BOLD, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %34, %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @EM_SETCHARFORMAT, align 4
  %41 = load i32, i32* @SCF_SELECTION, align 4
  %42 = ptrtoint %struct.TYPE_4__* %2 to i32
  %43 = call i32 @SendMessageA(i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i32, i8*, i32, ...) @ok(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @EM_SETCHARFORMAT, align 4
  %51 = load i32, i32* @SCF_WORD, align 4
  %52 = load i32, i32* @SCF_SELECTION, align 4
  %53 = or i32 %51, %52
  %54 = ptrtoint %struct.TYPE_4__* %2 to i32
  %55 = call i32 @SendMessageA(i32 %49, i32 %50, i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %5, align 4
  %60 = call i32 (i32, i8*, i32, ...) @ok(i32 %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @EM_SETCHARFORMAT, align 4
  %63 = load i32, i32* @SCF_ALL, align 4
  %64 = ptrtoint %struct.TYPE_4__* %2 to i32
  %65 = call i32 @SendMessageA(i32 %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 1
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (i32, i8*, i32, ...) @ok(i32 %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %1, align 4
  %72 = load i32, i32* @EM_GETCHARFORMAT, align 4
  %73 = load i32, i32* @SCF_SELECTION, align 4
  %74 = ptrtoint %struct.TYPE_4__* %2 to i32
  %75 = call i32 @SendMessageA(i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 12, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 21, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32 30, i32* %78, align 4
  %79 = load i32, i32* %1, align 4
  %80 = load i32, i32* @EM_EXSETSEL, align 4
  %81 = ptrtoint %struct.TYPE_3__* %4 to i32
  %82 = call i32 @SendMessageA(i32 %79, i32 %80, i32 0, i32 %81)
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @EM_GETCHARFORMAT, align 4
  %85 = load i32, i32* @SCF_SELECTION, align 4
  %86 = ptrtoint %struct.TYPE_4__* %3 to i32
  %87 = call i32 @SendMessageA(i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %95, %97
  br label %99

99:                                               ; preds = %93, %0
  %100 = phi i1 [ false, %0 ], [ %98, %93 ]
  %101 = zext i1 %100 to i32
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, i32, ...) @ok(i32 %101, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %105, i32 %107, i32 %109)
  %111 = load i32, i32* %1, align 4
  %112 = load i32, i32* @WM_SETTEXT, align 4
  %113 = call i32 @SendMessageA(i32 %111, i32 %112, i32 0, i32 ptrtoint ([5 x i8]* @.str.5 to i32))
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32 4, i32* %115, align 4
  %116 = load i32, i32* %1, align 4
  %117 = load i32, i32* @EM_EXSETSEL, align 4
  %118 = ptrtoint %struct.TYPE_3__* %4 to i32
  %119 = call i32 @SendMessageA(i32 %116, i32 %117, i32 0, i32 %118)
  %120 = load i32, i32* %1, align 4
  %121 = load i32, i32* @WM_COPY, align 4
  %122 = call i32 @SendMessageA(i32 %120, i32 %121, i32 0, i32 0)
  %123 = load i32, i32* %1, align 4
  %124 = load i32, i32* @WM_SETTEXT, align 4
  %125 = call i32 @SendMessageA(i32 %123, i32 %124, i32 0, i32 ptrtoint ([1 x i8]* @.str to i32))
  %126 = load i32, i32* %1, align 4
  %127 = load i32, i32* @EM_SETTEXTMODE, align 4
  %128 = load i32, i32* @TM_RICHTEXT, align 4
  %129 = call i32 @SendMessageA(i32 %126, i32 %127, i32 %128, i32 0)
  %130 = load i32, i32* %1, align 4
  %131 = load i32, i32* @EM_GETCHARFORMAT, align 4
  %132 = load i32, i32* @SCF_DEFAULT, align 4
  %133 = ptrtoint %struct.TYPE_4__* %2 to i32
  %134 = call i32 @SendMessageA(i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* @CFM_ITALIC, align 4
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %135
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* @CFE_ITALIC, align 4
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = xor i32 %141, %139
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* %1, align 4
  %144 = load i32, i32* @EM_SETCHARFORMAT, align 4
  %145 = load i32, i32* @SCF_ALL, align 4
  %146 = ptrtoint %struct.TYPE_4__* %2 to i32
  %147 = call i32 @SendMessageA(i32 %143, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp eq i32 %148, 1
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %5, align 4
  %152 = call i32 (i32, i8*, i32, ...) @ok(i32 %150, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %1, align 4
  %154 = load i32, i32* @WM_SETTEXT, align 4
  %155 = call i32 @SendMessageA(i32 %153, i32 %154, i32 0, i32 ptrtoint ([5 x i8]* @.str.5 to i32))
  %156 = load i32, i32* %1, align 4
  %157 = load i32, i32* @WM_PASTE, align 4
  %158 = call i32 @SendMessageA(i32 %156, i32 %157, i32 0, i32 0)
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 1, i32* %159, align 4
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32 3, i32* %160, align 4
  %161 = load i32, i32* %1, align 4
  %162 = load i32, i32* @EM_EXSETSEL, align 4
  %163 = ptrtoint %struct.TYPE_3__* %4 to i32
  %164 = call i32 @SendMessageA(i32 %161, i32 %162, i32 0, i32 %163)
  %165 = load i32, i32* %1, align 4
  %166 = load i32, i32* @EM_GETCHARFORMAT, align 4
  %167 = load i32, i32* @SCF_SELECTION, align 4
  %168 = ptrtoint %struct.TYPE_4__* %2 to i32
  %169 = call i32 @SendMessageA(i32 %165, i32 %166, i32 %167, i32 %168)
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 5, i32* %170, align 4
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32 7, i32* %171, align 4
  %172 = load i32, i32* %1, align 4
  %173 = load i32, i32* @EM_EXSETSEL, align 4
  %174 = ptrtoint %struct.TYPE_3__* %4 to i32
  %175 = call i32 @SendMessageA(i32 %172, i32 %173, i32 0, i32 %174)
  %176 = load i32, i32* %1, align 4
  %177 = load i32, i32* @EM_GETCHARFORMAT, align 4
  %178 = load i32, i32* @SCF_SELECTION, align 4
  %179 = ptrtoint %struct.TYPE_4__* %3 to i32
  %180 = call i32 @SendMessageA(i32 %176, i32 %177, i32 %178, i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %182, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %99
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %188, %190
  br label %192

192:                                              ; preds = %186, %99
  %193 = phi i1 [ false, %99 ], [ %191, %186 ]
  %194 = zext i1 %193 to i32
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i32, i8*, i32, ...) @ok(i32 %194, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.6, i64 0, i64 0), i32 %196, i32 %198, i32 %200, i32 %202)
  %204 = load i32, i32* %1, align 4
  %205 = call i32 @DestroyWindow(i32 %204)
  ret void
}

declare dso_local i32 @new_richedit(i32*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
