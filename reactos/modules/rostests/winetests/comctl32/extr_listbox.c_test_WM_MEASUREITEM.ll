; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_listbox.c_test_WM_MEASUREITEM.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_listbox.c_test_WM_MEASUREITEM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WS_CHILD = common dso_local global i32 0, align 4
@LBS_OWNERDRAWVARIABLE = common dso_local global i32 0, align 4
@LB_GETITEMDATA = common dso_local global i32 0, align 4
@strings = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"data = %08lx, expected %p\0A\00", align 1
@LBS_HASSTRINGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"data = %08lx\0A\00", align 1
@WS_EX_NOPARENTNOTIFY = common dso_local global i32 0, align 4
@WC_LISTBOXA = common dso_local global i32 0, align 4
@LBS_NOTIFY = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@ID_LISTBOX = common dso_local global i64 0, align 8
@sequences = common dso_local global i32 0, align 4
@NUM_MSG_SEQUENCES = common dso_local global i32 0, align 4
@LB_ADDSTRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"item 0\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"expected 0, got %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"item 1\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"expected 1, got %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"item 2\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"expected 2, got %ld\0A\00", align 1
@PARENT_SEQ_INDEX = common dso_local global i32 0, align 4
@lb_addstring_ownerdraw_parent_seq = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"LB_ADDSTRING (LBS_HASSTRINGS, ownerdraw)\00", align 1
@FALSE = common dso_local global i32 0, align 4
@LBS_SORT = common dso_local global i32 0, align 4
@lb_addstring_sort_parent_seq = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"LB_ADDSTRING (LBS_SORT)\00", align 1
@empty_seq = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"LB_ADDSTRING (LBS_HASSTRINGS)\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"LB_ADDSTRING (LBS_HASSTRINGS, LBS_SORT)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WM_MEASUREITEM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WM_MEASUREITEM() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 (...) @create_parent()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @WS_CHILD, align 4
  %7 = load i32, i32* @LBS_OWNERDRAWVARIABLE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @create_listbox(i32 %8, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @LB_GETITEMDATA, align 4
  %13 = call i64 @SendMessageA(i32 %11, i32 %12, i32 0, i32 0)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64*, i64** @strings, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %3, align 8
  %21 = load i64*, i64** @strings, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i32, i8*, i64, ...) @ok(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %23)
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @DestroyWindow(i32 %25)
  %27 = call i32 (...) @create_parent()
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* @WS_CHILD, align 4
  %29 = load i32, i32* @LBS_OWNERDRAWVARIABLE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @LBS_HASSTRINGS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @create_listbox(i32 %32, i32 %33)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @LB_GETITEMDATA, align 4
  %37 = call i64 @SendMessageA(i32 %35, i32 %36, i32 0, i32 0)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %3, align 8
  %43 = call i32 (i32, i8*, i64, ...) @ok(i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = call i32 (...) @create_parent()
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* @WS_EX_NOPARENTNOTIFY, align 4
  %46 = load i32, i32* @WC_LISTBOXA, align 4
  %47 = load i32, i32* @WS_CHILD, align 4
  %48 = load i32, i32* @LBS_NOTIFY, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @LBS_OWNERDRAWVARIABLE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @LBS_HASSTRINGS, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @WS_VISIBLE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %1, align 4
  %57 = load i64, i64* @ID_LISTBOX, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @CreateWindowExA(i32 %45, i32 %46, i32* null, i32 %55, i32 10, i32 10, i32 80, i32 80, i32 %56, i32 %58, i32 0, i32* null)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* @sequences, align 4
  %61 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %62 = call i32 @flush_sequences(i32 %60, i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @LB_ADDSTRING, align 4
  %65 = call i64 @SendMessageA(i32 %63, i32 %64, i32 0, i32 ptrtoint ([7 x i8]* @.str.2 to i32))
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %4, align 8
  %70 = call i32 (i32, i8*, i64, ...) @ok(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @LB_ADDSTRING, align 4
  %73 = call i64 @SendMessageA(i32 %71, i32 %72, i32 0, i32 ptrtoint ([7 x i8]* @.str.4 to i32))
  store i64 %73, i64* %4, align 8
  %74 = load i64, i64* %4, align 8
  %75 = icmp eq i64 %74, 1
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %4, align 8
  %78 = call i32 (i32, i8*, i64, ...) @ok(i32 %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @LB_ADDSTRING, align 4
  %81 = call i64 @SendMessageA(i32 %79, i32 %80, i32 0, i32 ptrtoint ([7 x i8]* @.str.6 to i32))
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %4, align 8
  %83 = icmp eq i64 %82, 2
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %4, align 8
  %86 = call i32 (i32, i8*, i64, ...) @ok(i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 %85)
  %87 = load i32, i32* @sequences, align 4
  %88 = load i32, i32* @PARENT_SEQ_INDEX, align 4
  %89 = load i32, i32* @lb_addstring_ownerdraw_parent_seq, align 4
  %90 = load i32, i32* @FALSE, align 4
  %91 = call i32 @ok_sequence(i32 %87, i32 %88, i32 %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %2, align 4
  %93 = call i32 @DestroyWindow(i32 %92)
  %94 = load i32, i32* @WS_EX_NOPARENTNOTIFY, align 4
  %95 = load i32, i32* @WC_LISTBOXA, align 4
  %96 = load i32, i32* @WS_CHILD, align 4
  %97 = load i32, i32* @LBS_NOTIFY, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @LBS_OWNERDRAWVARIABLE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @LBS_SORT, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @WS_VISIBLE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %1, align 4
  %106 = load i64, i64* @ID_LISTBOX, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @CreateWindowExA(i32 %94, i32 %95, i32* null, i32 %104, i32 10, i32 10, i32 80, i32 80, i32 %105, i32 %107, i32 0, i32* null)
  store i32 %108, i32* %2, align 4
  %109 = load i32, i32* @sequences, align 4
  %110 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %111 = call i32 @flush_sequences(i32 %109, i32 %110)
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* @LB_ADDSTRING, align 4
  %114 = call i64 @SendMessageA(i32 %112, i32 %113, i32 0, i32 ptrtoint ([7 x i8]* @.str.2 to i32))
  store i64 %114, i64* %4, align 8
  %115 = load i64, i64* %4, align 8
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %4, align 8
  %119 = call i32 (i32, i8*, i64, ...) @ok(i32 %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %118)
  %120 = load i32, i32* %2, align 4
  %121 = load i32, i32* @LB_ADDSTRING, align 4
  %122 = call i64 @SendMessageA(i32 %120, i32 %121, i32 0, i32 ptrtoint ([7 x i8]* @.str.4 to i32))
  store i64 %122, i64* %4, align 8
  %123 = load i64, i64* %4, align 8
  %124 = icmp eq i64 %123, 1
  %125 = zext i1 %124 to i32
  %126 = load i64, i64* %4, align 8
  %127 = call i32 (i32, i8*, i64, ...) @ok(i32 %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %126)
  %128 = load i32, i32* %2, align 4
  %129 = load i32, i32* @LB_ADDSTRING, align 4
  %130 = call i64 @SendMessageA(i32 %128, i32 %129, i32 0, i32 ptrtoint ([7 x i8]* @.str.6 to i32))
  store i64 %130, i64* %4, align 8
  %131 = load i64, i64* %4, align 8
  %132 = icmp eq i64 %131, 2
  %133 = zext i1 %132 to i32
  %134 = load i64, i64* %4, align 8
  %135 = call i32 (i32, i8*, i64, ...) @ok(i32 %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 %134)
  %136 = load i32, i32* @sequences, align 4
  %137 = load i32, i32* @PARENT_SEQ_INDEX, align 4
  %138 = load i32, i32* @lb_addstring_sort_parent_seq, align 4
  %139 = load i32, i32* @FALSE, align 4
  %140 = call i32 @ok_sequence(i32 %136, i32 %137, i32 %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %2, align 4
  %142 = call i32 @DestroyWindow(i32 %141)
  %143 = load i32, i32* @WS_EX_NOPARENTNOTIFY, align 4
  %144 = load i32, i32* @WC_LISTBOXA, align 4
  %145 = load i32, i32* @WS_CHILD, align 4
  %146 = load i32, i32* @LBS_NOTIFY, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @LBS_HASSTRINGS, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @WS_VISIBLE, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* %1, align 4
  %153 = load i64, i64* @ID_LISTBOX, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 @CreateWindowExA(i32 %143, i32 %144, i32* null, i32 %151, i32 10, i32 10, i32 80, i32 80, i32 %152, i32 %154, i32 0, i32* null)
  store i32 %155, i32* %2, align 4
  %156 = load i32, i32* @sequences, align 4
  %157 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %158 = call i32 @flush_sequences(i32 %156, i32 %157)
  %159 = load i32, i32* %2, align 4
  %160 = load i32, i32* @LB_ADDSTRING, align 4
  %161 = call i64 @SendMessageA(i32 %159, i32 %160, i32 0, i32 ptrtoint ([7 x i8]* @.str.6 to i32))
  store i64 %161, i64* %4, align 8
  %162 = load i64, i64* %4, align 8
  %163 = icmp eq i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = load i64, i64* %4, align 8
  %166 = call i32 (i32, i8*, i64, ...) @ok(i32 %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %165)
  %167 = load i32, i32* %2, align 4
  %168 = load i32, i32* @LB_ADDSTRING, align 4
  %169 = call i64 @SendMessageA(i32 %167, i32 %168, i32 0, i32 ptrtoint ([7 x i8]* @.str.2 to i32))
  store i64 %169, i64* %4, align 8
  %170 = load i64, i64* %4, align 8
  %171 = icmp eq i64 %170, 1
  %172 = zext i1 %171 to i32
  %173 = load i64, i64* %4, align 8
  %174 = call i32 (i32, i8*, i64, ...) @ok(i32 %172, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %173)
  %175 = load i32, i32* %2, align 4
  %176 = load i32, i32* @LB_ADDSTRING, align 4
  %177 = call i64 @SendMessageA(i32 %175, i32 %176, i32 0, i32 ptrtoint ([7 x i8]* @.str.4 to i32))
  store i64 %177, i64* %4, align 8
  %178 = load i64, i64* %4, align 8
  %179 = icmp eq i64 %178, 2
  %180 = zext i1 %179 to i32
  %181 = load i64, i64* %4, align 8
  %182 = call i32 (i32, i8*, i64, ...) @ok(i32 %180, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 %181)
  %183 = load i32, i32* @sequences, align 4
  %184 = load i32, i32* @PARENT_SEQ_INDEX, align 4
  %185 = load i32, i32* @empty_seq, align 4
  %186 = load i32, i32* @FALSE, align 4
  %187 = call i32 @ok_sequence(i32 %183, i32 %184, i32 %185, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %2, align 4
  %189 = call i32 @DestroyWindow(i32 %188)
  %190 = load i32, i32* @WS_EX_NOPARENTNOTIFY, align 4
  %191 = load i32, i32* @WC_LISTBOXA, align 4
  %192 = load i32, i32* @WS_CHILD, align 4
  %193 = load i32, i32* @LBS_NOTIFY, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @LBS_HASSTRINGS, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @LBS_SORT, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @WS_VISIBLE, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* %1, align 4
  %202 = load i64, i64* @ID_LISTBOX, align 8
  %203 = trunc i64 %202 to i32
  %204 = call i32 @CreateWindowExA(i32 %190, i32 %191, i32* null, i32 %200, i32 10, i32 10, i32 80, i32 80, i32 %201, i32 %203, i32 0, i32* null)
  store i32 %204, i32* %2, align 4
  %205 = load i32, i32* @sequences, align 4
  %206 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %207 = call i32 @flush_sequences(i32 %205, i32 %206)
  %208 = load i32, i32* %2, align 4
  %209 = load i32, i32* @LB_ADDSTRING, align 4
  %210 = call i64 @SendMessageA(i32 %208, i32 %209, i32 0, i32 ptrtoint ([7 x i8]* @.str.6 to i32))
  store i64 %210, i64* %4, align 8
  %211 = load i64, i64* %4, align 8
  %212 = icmp eq i64 %211, 0
  %213 = zext i1 %212 to i32
  %214 = load i64, i64* %4, align 8
  %215 = call i32 (i32, i8*, i64, ...) @ok(i32 %213, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %214)
  %216 = load i32, i32* %2, align 4
  %217 = load i32, i32* @LB_ADDSTRING, align 4
  %218 = call i64 @SendMessageA(i32 %216, i32 %217, i32 0, i32 ptrtoint ([7 x i8]* @.str.2 to i32))
  store i64 %218, i64* %4, align 8
  %219 = load i64, i64* %4, align 8
  %220 = icmp eq i64 %219, 0
  %221 = zext i1 %220 to i32
  %222 = load i64, i64* %4, align 8
  %223 = call i32 (i32, i8*, i64, ...) @ok(i32 %221, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %222)
  %224 = load i32, i32* %2, align 4
  %225 = load i32, i32* @LB_ADDSTRING, align 4
  %226 = call i64 @SendMessageA(i32 %224, i32 %225, i32 0, i32 ptrtoint ([7 x i8]* @.str.4 to i32))
  store i64 %226, i64* %4, align 8
  %227 = load i64, i64* %4, align 8
  %228 = icmp eq i64 %227, 1
  %229 = zext i1 %228 to i32
  %230 = load i64, i64* %4, align 8
  %231 = call i32 (i32, i8*, i64, ...) @ok(i32 %229, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %230)
  %232 = load i32, i32* @sequences, align 4
  %233 = load i32, i32* @PARENT_SEQ_INDEX, align 4
  %234 = load i32, i32* @empty_seq, align 4
  %235 = load i32, i32* @FALSE, align 4
  %236 = call i32 @ok_sequence(i32 %232, i32 %233, i32 %234, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %2, align 4
  %238 = call i32 @DestroyWindow(i32 %237)
  %239 = load i32, i32* %1, align 4
  %240 = call i32 @DestroyWindow(i32 %239)
  ret void
}

declare dso_local i32 @create_parent(...) #1

declare dso_local i32 @create_listbox(i32, i32) #1

declare dso_local i64 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @DestroyWindow(i32) #1

declare dso_local i32 @CreateWindowExA(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @flush_sequences(i32, i32) #1

declare dso_local i32 @ok_sequence(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
