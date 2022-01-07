; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_listbox.c_run_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_listbox.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32, i32, i32, i32 }
%struct.listbox_test = type { i32 }
%struct.listbox_stat = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }

@run_test.delete_seq = internal constant [6 x %struct.message] [%struct.message { i32 133, i32 131, i32 0, i32 0 }, %struct.message { i32 133, i32 131, i32 0, i32 0 }, %struct.message { i32 133, i32 131, i32 0, i32 0 }, %struct.message { i32 133, i32 131, i32 0, i32 0 }, %struct.message { i32 132, i32 131, i32 0, i32 0 }, %struct.message zeroinitializer], align 16
@init = common dso_local global i32 0, align 4
@LB_GETITEMRECT = common dso_local global i32 0, align 4
@click = common dso_local global i32 0, align 4
@VK_DOWN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@step = common dso_local global i32 0, align 4
@LB_SELITEMRANGE = common dso_local global i32 0, align 4
@sel = common dso_local global i32 0, align 4
@LBS_NODATA = common dso_local global i32 0, align 4
@LB_GETTEXTLEN = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@strings = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"returned string for item %d does not match %s vs %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unexpected text length.\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Unexpected string for item %d, %s vs %s.\0A\00", align 1
@LB_GETCOUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Expected 4 items, got %d\0A\00", align 1
@LB_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Expected LB_ERR items, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Unexpected item count %d.\0A\00", align 1
@sequences = common dso_local global i32 0, align 4
@LB_SEQ_INDEX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Unexpected return value %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Emptying listbox\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.listbox_test, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.listbox_stat, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = getelementptr inbounds %struct.listbox_test, %struct.listbox_test* %3, i32 0, i32 0
  store i32 %1, i32* %16, align 4
  store i32 %0, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @create_listbox(i32 %17, i32 0)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @listbox_query(i32 %19, %struct.listbox_stat* %5)
  %21 = load i32, i32* @init, align 4
  %22 = getelementptr inbounds %struct.listbox_test, %struct.listbox_test* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.listbox_stat, %struct.listbox_stat* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @listbox_ok(i32 %23, i32 %21, i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @LB_GETITEMRECT, align 4
  %29 = ptrtoint %struct.TYPE_2__* %9 to i32
  %30 = call i32 @SendMessageA(i32 %27, i32 %28, i32 1, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @buttonpress(i32 %31, i32 %34, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @listbox_query(i32 %39, %struct.listbox_stat* %5)
  %41 = load i32, i32* @click, align 4
  %42 = getelementptr inbounds %struct.listbox_test, %struct.listbox_test* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.listbox_stat, %struct.listbox_stat* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @listbox_ok(i32 %43, i32 %41, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @VK_DOWN, align 4
  %49 = load i32, i32* @TRUE, align 4
  %50 = call i32 @keypress(i32 %47, i32 %48, i32 80, i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @listbox_query(i32 %51, %struct.listbox_stat* %5)
  %53 = load i32, i32* @step, align 4
  %54 = getelementptr inbounds %struct.listbox_test, %struct.listbox_test* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.listbox_stat, %struct.listbox_stat* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @listbox_ok(i32 %55, i32 %53, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @DestroyWindow(i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @create_listbox(i32 %61, i32 0)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @LB_SELITEMRANGE, align 4
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @MAKELPARAM(i32 1, i32 2)
  %67 = call i32 @SendMessageA(i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @listbox_query(i32 %68, %struct.listbox_stat* %5)
  %70 = load i32, i32* @sel, align 4
  %71 = getelementptr inbounds %struct.listbox_test, %struct.listbox_test* %3, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.listbox_stat, %struct.listbox_stat* %5, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @listbox_ok(i32 %72, i32 %70, i32 %74)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %163, %2
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @LBS_NODATA, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %79, %76
  %86 = phi i1 [ false, %76 ], [ %84, %79 ]
  br i1 %86, label %87, label %166

87:                                               ; preds = %85
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @LB_GETTEXTLEN, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @SendMessageA(i32 %88, i32 %89, i32 %90, i32 0)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32* @heap_alloc_zero(i32 %93)
  store i32* %94, i32** %15, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @LB_GETTEXT, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32*, i32** %15, align 8
  %99 = ptrtoint i32* %98 to i32
  %100 = call i32 @SendMessageA(i32 %95, i32 %96, i32 %97, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32*, i32** %15, align 8
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
  %112 = load i32*, i32** %15, align 8
  %113 = load i32*, i32** @strings, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %111, i32* %112, i32 %117)
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i32* @heap_alloc_zero(i32 %123)
  store i32* %124, i32** %14, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @LB_GETTEXT, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32*, i32** %14, align 8
  %129 = ptrtoint i32* %128 to i32
  %130 = call i32 @SendMessageW(i32 %125, i32 %126, i32 %127, i32 %129)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i32, i32* @CP_ACP, align 4
  %137 = load i32*, i32** %14, align 8
  %138 = load i32*, i32** %15, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @WideCharToMultiByte(i32 %136, i32 0, i32* %137, i32 -1, i32* %138, i32 %139, i32* null, i32* null)
  %141 = load i32*, i32** %15, align 8
  %142 = load i32*, i32** @strings, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @strcmp(i32* %141, i32 %146)
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %6, align 4
  %152 = load i32*, i32** %15, align 8
  %153 = load i32*, i32** @strings, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %151, i32* %152, i32 %157)
  %159 = load i32*, i32** %14, align 8
  %160 = call i32 @heap_free(i32* %159)
  %161 = load i32*, i32** %15, align 8
  %162 = call i32 @heap_free(i32* %161)
  br label %163

163:                                              ; preds = %87
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %76

166:                                              ; preds = %85
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @LB_GETCOUNT, align 4
  %169 = call i32 @SendMessageA(i32 %167, i32 %168, i32 0, i32 0)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp eq i32 %170, 4
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %7, align 4
  %174 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @SendMessageA(i32 %175, i32 133, i32 -1, i32 0)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @LB_ERR, align 4
  %179 = icmp eq i32 %177, %178
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* %7, align 4
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @SendMessageA(i32 %183, i32 133, i32 4, i32 0)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @LB_ERR, align 4
  %187 = icmp eq i32 %185, %186
  %188 = zext i1 %187 to i32
  %189 = load i32, i32* %7, align 4
  %190 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* @LB_GETCOUNT, align 4
  %193 = call i32 @SendMessageA(i32 %191, i32 %192, i32 0, i32 0)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp eq i32 %194, 4
  %196 = zext i1 %195 to i32
  %197 = load i32, i32* %8, align 4
  %198 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* @sequences, align 4
  %200 = load i32, i32* @LB_SEQ_INDEX, align 4
  %201 = call i32 @flush_sequence(i32 %199, i32 %200)
  %202 = load i32, i32* %8, align 4
  store i32 %202, i32* %6, align 4
  br label %203

203:                                              ; preds = %207, %166
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %6, align 4
  %206 = icmp ne i32 %204, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %203
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @SendMessageA(i32 %208, i32 133, i32 0, i32 0)
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp eq i32 %210, %211
  %213 = zext i1 %212 to i32
  %214 = load i32, i32* %7, align 4
  %215 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %214)
  br label %203

216:                                              ; preds = %203
  %217 = load i32, i32* @sequences, align 4
  %218 = load i32, i32* @LB_SEQ_INDEX, align 4
  %219 = load i32, i32* @FALSE, align 4
  %220 = call i32 @ok_sequence(i32 %217, i32 %218, %struct.message* getelementptr inbounds ([6 x %struct.message], [6 x %struct.message]* @run_test.delete_seq, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %219)
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @DestroyWindow(i32 %221)
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

declare dso_local i32* @heap_alloc_zero(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i32*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @flush_sequence(i32, i32) #1

declare dso_local i32 @ok_sequence(i32, i32, %struct.message*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
