; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_autocomplete.c_test_aclist_expand.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_autocomplete.c_test_aclist_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_enumerator = type { i32, i32, i8* }

@test_aclist_expand.str1 = internal global [5 x i8] c"test\00", align 1
@test_aclist_expand.str1a = internal global [6 x i8] c"test\\\00", align 1
@test_aclist_expand.str2 = internal global [16 x i8] c"test\\foo\\bar\\ba\00", align 16
@test_aclist_expand.str2a = internal global [14 x i8] c"test\\foo\\bar\\\00", align 1
@test_aclist_expand.str2b = internal global [22 x i8] c"test\\foo\\bar\\baz_bbq\\\00", align 16
@.str = private unnamed_addr constant [31 x i8] c"Expected 0 expansions, got %u\0A\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@WM_CHAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Expected 1 expansion, got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Expected %s, got %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Expected 1 reset, got %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Expected 2 expansions, got %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Expected 2 resets, got %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Expected 3 expansions, got %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Expected 3 resets, got %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Expected 4 expansions, got %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Expected 4 resets, got %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Expected 5 resets, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_aclist_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_aclist_expand(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.string_enumerator*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.string_enumerator*
  store %struct.string_enumerator* %7, %struct.string_enumerator** %5, align 8
  %8 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %9 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %11 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %16 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, i32, ...) @ok(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @WM_SETTEXT, align 4
  %21 = call i32 @SendMessageW(i32 %19, i32 %20, i8 signext 0, i32 ptrtoint ([5 x i8]* @test_aclist_expand.str1 to i32))
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @EM_SETSEL, align 4
  %24 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_aclist_expand.str1, i64 0, i64 0))
  %25 = sub nsw i32 %24, 1
  %26 = trunc i32 %25 to i8
  %27 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_aclist_expand.str1, i64 0, i64 0))
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @SendMessageW(i32 %22, i32 %23, i8 signext %26, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @WM_CHAR, align 4
  %32 = call i32 @SendMessageW(i32 %30, i32 %31, i8 signext 92, i32 1)
  %33 = call i32 (...) @dispatch_messages()
  %34 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %35 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  %38 = zext i1 %37 to i32
  %39 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %40 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, i32, ...) @ok(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %44 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @lstrcmpW(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_aclist_expand.str1a, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @wine_dbgstr_w(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_aclist_expand.str1a, i64 0, i64 0))
  %50 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %51 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @wine_dbgstr_w(i8* %52)
  %54 = call i32 (i32, i8*, i32, ...) @ok(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %53)
  %55 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %56 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %61 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, i32, ...) @ok(i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @WM_SETTEXT, align 4
  %66 = call i32 @SendMessageW(i32 %64, i32 %65, i8 signext 0, i32 ptrtoint ([16 x i8]* @test_aclist_expand.str2 to i32))
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @EM_SETSEL, align 4
  %69 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_aclist_expand.str2, i64 0, i64 0))
  %70 = sub nsw i32 %69, 1
  %71 = trunc i32 %70 to i8
  %72 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_aclist_expand.str2, i64 0, i64 0))
  %73 = sub nsw i32 %72, 1
  %74 = call i32 @SendMessageW(i32 %67, i32 %68, i8 signext %71, i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @WM_CHAR, align 4
  %77 = call i32 @SendMessageW(i32 %75, i32 %76, i8 signext 122, i32 1)
  %78 = call i32 (...) @dispatch_messages()
  %79 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %80 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 2
  %83 = zext i1 %82 to i32
  %84 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %85 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, i32, ...) @ok(i32 %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %89 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @lstrcmpW(i8* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_aclist_expand.str2a, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @wine_dbgstr_w(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_aclist_expand.str2a, i64 0, i64 0))
  %95 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %96 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @wine_dbgstr_w(i8* %97)
  %99 = call i32 (i32, i8*, i32, ...) @ok(i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %98)
  %100 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %101 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i32
  %105 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %106 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i32, i8*, i32, ...) @ok(i32 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @SetFocus(i32 %109)
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @WM_CHAR, align 4
  %113 = call i32 @SendMessageW(i32 %111, i32 %112, i8 signext 95, i32 1)
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @WM_CHAR, align 4
  %116 = call i32 @SendMessageW(i32 %114, i32 %115, i8 signext 98, i32 1)
  %117 = call i32 @SetFocus(i32 0)
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @SetFocus(i32 %118)
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @WM_CHAR, align 4
  %122 = call i32 @SendMessageW(i32 %120, i32 %121, i8 signext 98, i32 1)
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @WM_CHAR, align 4
  %125 = call i32 @SendMessageW(i32 %123, i32 %124, i8 signext 113, i32 1)
  %126 = call i32 (...) @dispatch_messages()
  %127 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %128 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i32
  %132 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %133 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i32, i8*, i32, ...) @ok(i32 %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %137 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 2
  %140 = zext i1 %139 to i32
  %141 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %142 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, i32, ...) @ok(i32 %140, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* @WM_CHAR, align 4
  %147 = call i32 @SendMessageW(i32 %145, i32 %146, i8 signext 92, i32 1)
  %148 = call i32 (...) @dispatch_messages()
  %149 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %150 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 3
  %153 = zext i1 %152 to i32
  %154 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %155 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, i32, ...) @ok(i32 %153, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %156)
  %158 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %159 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @lstrcmpW(i8* %160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_aclist_expand.str2b, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 @wine_dbgstr_w(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_aclist_expand.str2b, i64 0, i64 0))
  %165 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %166 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @wine_dbgstr_w(i8* %167)
  %169 = call i32 (i32, i8*, i32, ...) @ok(i32 %163, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %164, i32 %168)
  %170 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %171 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 3
  %174 = zext i1 %173 to i32
  %175 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %176 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32, i8*, i32, ...) @ok(i32 %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* @EM_SETSEL, align 4
  %181 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_aclist_expand.str1a, i64 0, i64 0))
  %182 = sub nsw i32 %181, 1
  %183 = trunc i32 %182 to i8
  %184 = call i32 @SendMessageW(i32 %179, i32 %180, i8 signext %183, i32 -1)
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* @WM_CHAR, align 4
  %187 = call i32 @SendMessageW(i32 %185, i32 %186, i8 signext 120, i32 1)
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* @WM_CHAR, align 4
  %190 = call i32 @SendMessageW(i32 %188, i32 %189, i8 signext 121, i32 1)
  %191 = call i32 (...) @dispatch_messages()
  %192 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %193 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 4
  %196 = zext i1 %195 to i32
  %197 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %198 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 (i32, i8*, i32, ...) @ok(i32 %196, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %199)
  %201 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %202 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %201, i32 0, i32 2
  %203 = load i8*, i8** %202, align 8
  %204 = call i64 @lstrcmpW(i8* %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_aclist_expand.str1a, i64 0, i64 0))
  %205 = icmp eq i64 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i32 @wine_dbgstr_w(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_aclist_expand.str1a, i64 0, i64 0))
  %208 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %209 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @wine_dbgstr_w(i8* %210)
  %212 = call i32 (i32, i8*, i32, ...) @ok(i32 %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %207, i32 %211)
  %213 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %214 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp eq i32 %215, 4
  %217 = zext i1 %216 to i32
  %218 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %219 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 (i32, i8*, i32, ...) @ok(i32 %217, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %220)
  %222 = load i32, i32* %3, align 4
  %223 = load i32, i32* @EM_SETSEL, align 4
  %224 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_aclist_expand.str1, i64 0, i64 0))
  %225 = sub nsw i32 %224, 1
  %226 = trunc i32 %225 to i8
  %227 = call i32 @SendMessageW(i32 %222, i32 %223, i8 signext %226, i32 -1)
  %228 = load i32, i32* %3, align 4
  %229 = load i32, i32* @WM_CHAR, align 4
  %230 = call i32 @SendMessageW(i32 %228, i32 %229, i8 signext 120, i32 1)
  %231 = call i32 (...) @dispatch_messages()
  %232 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %233 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 4
  %236 = zext i1 %235 to i32
  %237 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %238 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (i32, i8*, i32, ...) @ok(i32 %236, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %239)
  %241 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %242 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp eq i32 %243, 5
  %245 = zext i1 %244 to i32
  %246 = load %struct.string_enumerator*, %struct.string_enumerator** %5, align 8
  %247 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 (i32, i8*, i32, ...) @ok(i32 %245, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %248)
  ret void
}

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @SendMessageW(i32, i32, i8 signext, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @dispatch_messages(...) #1

declare dso_local i64 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @SetFocus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
