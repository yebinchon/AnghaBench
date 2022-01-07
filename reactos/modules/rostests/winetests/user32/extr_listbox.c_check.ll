; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_listbox.c_check.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_listbox.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listbox_test = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.listbox_stat = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@init = common dso_local global i32 0, align 4
@LB_GETITEMRECT = common dso_local global i32 0, align 4
@click = common dso_local global i32 0, align 4
@VK_DOWN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@step = common dso_local global i32 0, align 4
@LB_SELITEMRANGE = common dso_local global i32 0, align 4
@sel = common dso_local global i32 0, align 4
@LB_GETTEXTLEN = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@strings = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"returned string for item %d does not match %s vs %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"SendMessageW(LB_GETTEXT) not supported on this platform (resA=%d resW=%d), skipping...\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@LB_GETCOUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Expected 4 items, got %d\0A\00", align 1
@LB_DELETESTRING = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Expected LB_ERR items, got %d\0A\00", align 1
@WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check(i32 %0) #0 {
  %2 = alloca %struct.listbox_test, align 4
  %3 = alloca %struct.listbox_stat, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.listbox_test, %struct.listbox_test* %2, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.listbox_test, %struct.listbox_test* %2, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @create_listbox(i32 %17, i32 0)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @listbox_query(i32 %19, %struct.listbox_stat* %3)
  %21 = load i32, i32* @init, align 4
  %22 = getelementptr inbounds %struct.listbox_test, %struct.listbox_test* %2, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.listbox_stat, %struct.listbox_stat* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @listbox_ok(i32 %24, i32 %21, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @LB_GETITEMRECT, align 4
  %30 = ptrtoint %struct.TYPE_4__* %5 to i32
  %31 = call i32 @SendMessageA(i32 %28, i32 %29, i32 1, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @buttonpress(i32 %32, i32 %35, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @listbox_query(i32 %40, %struct.listbox_stat* %3)
  %42 = load i32, i32* @click, align 4
  %43 = getelementptr inbounds %struct.listbox_test, %struct.listbox_test* %2, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.listbox_stat, %struct.listbox_stat* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @listbox_ok(i32 %45, i32 %42, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @VK_DOWN, align 4
  %51 = load i32, i32* @TRUE, align 4
  %52 = call i32 @keypress(i32 %49, i32 %50, i32 80, i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @listbox_query(i32 %53, %struct.listbox_stat* %3)
  %55 = load i32, i32* @step, align 4
  %56 = getelementptr inbounds %struct.listbox_test, %struct.listbox_test* %2, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.listbox_stat, %struct.listbox_stat* %3, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @listbox_ok(i32 %58, i32 %55, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @DestroyWindow(i32 %62)
  %64 = getelementptr inbounds %struct.listbox_test, %struct.listbox_test* %2, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @create_listbox(i32 %66, i32 0)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @LB_SELITEMRANGE, align 4
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i32 @MAKELPARAM(i32 1, i32 2)
  %72 = call i32 @SendMessageA(i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @listbox_query(i32 %73, %struct.listbox_stat* %3)
  %75 = load i32, i32* @sel, align 4
  %76 = getelementptr inbounds %struct.listbox_test, %struct.listbox_test* %2, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.listbox_stat, %struct.listbox_stat* %3, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @listbox_ok(i32 %78, i32 %75, i32 %80)
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %169, %1
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 4
  br i1 %84, label %85, label %172

85:                                               ; preds = %82
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @LB_GETTEXTLEN, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @SendMessageA(i32 %86, i32 %87, i32 %88, i32 0)
  store i32 %89, i32* %8, align 4
  %90 = call i32 (...) @GetProcessHeap()
  %91 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32* @HeapAlloc(i32 %90, i32 %91, i32 %93)
  store i32* %94, i32** %9, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @LB_GETTEXT, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = ptrtoint i32* %98 to i32
  %100 = call i32 @SendMessageA(i32 %95, i32 %96, i32 %97, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = load i32*, i32** @strings, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @strcmp(i32* %101, i32 %106)
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %6, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = load i32*, i32** @strings, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, i32, ...) @ok(i32 %110, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %111, i32* %112, i32 %117)
  %119 = call i32 (...) @GetProcessHeap()
  %120 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %121 = load i32, i32* %8, align 4
  %122 = mul nsw i32 2, %121
  %123 = add nsw i32 %122, 2
  %124 = call i32* @HeapAlloc(i32 %119, i32 %120, i32 %123)
  store i32* %124, i32** %10, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @LB_GETTEXT, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = ptrtoint i32* %128 to i32
  %130 = call i32 @SendMessageW(i32 %125, i32 %126, i32 %127, i32 %129)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %85
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @trace(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %135, i32 %136)
  br label %162

138:                                              ; preds = %85
  %139 = load i32, i32* @CP_ACP, align 4
  %140 = load i32*, i32** %10, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @WideCharToMultiByte(i32 %139, i32 0, i32* %140, i32 -1, i32* %141, i32 %142, i32* null, i32* null)
  %144 = load i32*, i32** %9, align 8
  %145 = load i32*, i32** @strings, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @strcmp(i32* %144, i32 %149)
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %6, align 4
  %155 = load i32*, i32** %9, align 8
  %156 = load i32*, i32** @strings, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i32, i8*, i32, ...) @ok(i32 %153, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %154, i32* %155, i32 %160)
  br label %162

162:                                              ; preds = %138, %134
  %163 = call i32 (...) @GetProcessHeap()
  %164 = load i32*, i32** %10, align 8
  %165 = call i32 @HeapFree(i32 %163, i32 0, i32* %164)
  %166 = call i32 (...) @GetProcessHeap()
  %167 = load i32*, i32** %9, align 8
  %168 = call i32 @HeapFree(i32 %166, i32 0, i32* %167)
  br label %169

169:                                              ; preds = %162
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  br label %82

172:                                              ; preds = %82
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @LB_GETCOUNT, align 4
  %175 = call i32 @SendMessageA(i32 %173, i32 %174, i32 0, i32 0)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp eq i32 %176, 4
  %178 = zext i1 %177 to i32
  %179 = load i32, i32* %7, align 4
  %180 = call i32 (i32, i8*, i32, ...) @ok(i32 %178, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @LB_DELETESTRING, align 4
  %183 = call i32 @SendMessageA(i32 %181, i32 %182, i32 -1, i32 0)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @LB_ERR, align 4
  %186 = icmp eq i32 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* %7, align 4
  %189 = call i32 (i32, i8*, i32, ...) @ok(i32 %187, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* @LB_DELETESTRING, align 4
  %192 = call i32 @SendMessageA(i32 %190, i32 %191, i32 4, i32 0)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @LB_ERR, align 4
  %195 = icmp eq i32 %193, %194
  %196 = zext i1 %195 to i32
  %197 = load i32, i32* %7, align 4
  %198 = call i32 (i32, i8*, i32, ...) @ok(i32 %196, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* @LB_GETCOUNT, align 4
  %201 = call i32 @SendMessageA(i32 %199, i32 %200, i32 0, i32 0)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = icmp eq i32 %202, 4
  %204 = zext i1 %203 to i32
  %205 = load i32, i32* %7, align 4
  %206 = call i32 (i32, i8*, i32, ...) @ok(i32 %204, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @WAIT, align 4
  %208 = load i32, i32* %4, align 4
  %209 = call i32 @DestroyWindow(i32 %208)
  ret void
}

declare dso_local i32 @create_listbox(i32, i32) #1

declare dso_local i32 @listbox_query(i32, %struct.listbox_stat*) #1

declare dso_local i32 @listbox_ok(i32, i32, i32) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @buttonpress(i32, i32, i32) #1

declare dso_local i32 @keypress(i32, i32, i32, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

declare dso_local i32 @MAKELPARAM(i32, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @strcmp(i32*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @trace(i8*, i32, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
