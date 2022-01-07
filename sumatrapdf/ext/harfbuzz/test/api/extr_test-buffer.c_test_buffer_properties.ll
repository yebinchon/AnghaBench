; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-buffer.c_test_buffer_properties.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-buffer.c_test_buffer_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@HB_DIRECTION_INVALID = common dso_local global i64 0, align 8
@HB_SCRIPT_INVALID = common dso_local global i64 0, align 8
@HB_DIRECTION_RTL = common dso_local global i64 0, align 8
@HB_SCRIPT_ARABIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"fa\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Fa\00", align 1
@HB_BUFFER_FLAG_BOT = common dso_local global i64 0, align 8
@HB_BUFFER_FLAGS_DEFAULT = common dso_local global i64 0, align 8
@HB_BUFFER_REPLACEMENT_CODEPOINT_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @test_buffer_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_buffer_properties(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @hb_buffer_get_unicode_funcs(i32* %10)
  %12 = call i64 (...) @hb_unicode_funcs_get_default()
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @g_assert(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @hb_buffer_get_direction(i32* %16)
  %18 = load i64, i64* @HB_DIRECTION_INVALID, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @g_assert(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @hb_buffer_get_script(i32* %22)
  %24 = load i64, i64* @HB_SCRIPT_INVALID, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @g_assert(i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32* @hb_buffer_get_language(i32* %28)
  %30 = icmp eq i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @g_assert(i32 %31)
  %33 = call i32* @hb_unicode_funcs_create(i32* null)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @hb_buffer_set_unicode_funcs(i32* %34, i32* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @hb_unicode_funcs_destroy(i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @hb_buffer_get_unicode_funcs(i32* %39)
  %41 = inttoptr i64 %40 to i32*
  %42 = load i32*, i32** %6, align 8
  %43 = icmp eq i32* %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @g_assert(i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* @HB_DIRECTION_RTL, align 8
  %48 = call i32 @hb_buffer_set_direction(i32* %46, i64 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @hb_buffer_get_direction(i32* %49)
  %51 = load i64, i64* @HB_DIRECTION_RTL, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @g_assert(i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* @HB_SCRIPT_ARABIC, align 8
  %57 = call i32 @hb_buffer_set_script(i32* %55, i64 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = call i64 @hb_buffer_get_script(i32* %58)
  %60 = load i64, i64* @HB_SCRIPT_ARABIC, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @g_assert(i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32* @hb_language_from_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 -1)
  %66 = call i32 @hb_buffer_set_language(i32* %64, i32* %65)
  %67 = load i32*, i32** %5, align 8
  %68 = call i32* @hb_buffer_get_language(i32* %67)
  %69 = call i32* @hb_language_from_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %70 = icmp eq i32* %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @g_assert(i32 %71)
  %73 = load i32*, i32** %5, align 8
  %74 = load i64, i64* @HB_BUFFER_FLAG_BOT, align 8
  %75 = call i32 @hb_buffer_set_flags(i32* %73, i64 %74)
  %76 = load i32*, i32** %5, align 8
  %77 = call i64 @hb_buffer_get_flags(i32* %76)
  %78 = load i64, i64* @HB_BUFFER_FLAG_BOT, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @g_assert(i32 %80)
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @hb_buffer_set_replacement_codepoint(i32* %82, i32 -1)
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @hb_buffer_get_replacement_codepoint(i32* %84)
  %86 = icmp eq i32 %85, -1
  %87 = zext i1 %86 to i32
  %88 = call i32 @g_assert(i32 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @hb_buffer_clear_contents(i32* %89)
  %91 = load i32*, i32** %5, align 8
  %92 = call i64 @hb_buffer_get_unicode_funcs(i32* %91)
  %93 = inttoptr i64 %92 to i32*
  %94 = load i32*, i32** %6, align 8
  %95 = icmp eq i32* %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @g_assert(i32 %96)
  %98 = load i32*, i32** %5, align 8
  %99 = call i64 @hb_buffer_get_direction(i32* %98)
  %100 = load i64, i64* @HB_DIRECTION_INVALID, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @g_assert(i32 %102)
  %104 = load i32*, i32** %5, align 8
  %105 = call i64 @hb_buffer_get_script(i32* %104)
  %106 = load i64, i64* @HB_SCRIPT_INVALID, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @g_assert(i32 %108)
  %110 = load i32*, i32** %5, align 8
  %111 = call i32* @hb_buffer_get_language(i32* %110)
  %112 = icmp eq i32* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 @g_assert(i32 %113)
  %115 = load i32*, i32** %5, align 8
  %116 = call i64 @hb_buffer_get_flags(i32* %115)
  %117 = load i64, i64* @HB_BUFFER_FLAGS_DEFAULT, align 8
  %118 = icmp ne i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @g_assert(i32 %119)
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @hb_buffer_get_replacement_codepoint(i32* %121)
  %123 = load i32, i32* @HB_BUFFER_REPLACEMENT_CODEPOINT_DEFAULT, align 4
  %124 = icmp ne i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @g_assert(i32 %125)
  %127 = load i32*, i32** %5, align 8
  %128 = load i64, i64* @HB_DIRECTION_RTL, align 8
  %129 = call i32 @hb_buffer_set_direction(i32* %127, i64 %128)
  %130 = load i32*, i32** %5, align 8
  %131 = call i64 @hb_buffer_get_direction(i32* %130)
  %132 = load i64, i64* @HB_DIRECTION_RTL, align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @g_assert(i32 %134)
  %136 = load i32*, i32** %5, align 8
  %137 = load i64, i64* @HB_SCRIPT_ARABIC, align 8
  %138 = call i32 @hb_buffer_set_script(i32* %136, i64 %137)
  %139 = load i32*, i32** %5, align 8
  %140 = call i64 @hb_buffer_get_script(i32* %139)
  %141 = load i64, i64* @HB_SCRIPT_ARABIC, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @g_assert(i32 %143)
  %145 = load i32*, i32** %5, align 8
  %146 = call i32* @hb_language_from_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 -1)
  %147 = call i32 @hb_buffer_set_language(i32* %145, i32* %146)
  %148 = load i32*, i32** %5, align 8
  %149 = call i32* @hb_buffer_get_language(i32* %148)
  %150 = call i32* @hb_language_from_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %151 = icmp eq i32* %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @g_assert(i32 %152)
  %154 = load i32*, i32** %5, align 8
  %155 = load i64, i64* @HB_BUFFER_FLAG_BOT, align 8
  %156 = call i32 @hb_buffer_set_flags(i32* %154, i64 %155)
  %157 = load i32*, i32** %5, align 8
  %158 = call i64 @hb_buffer_get_flags(i32* %157)
  %159 = load i64, i64* @HB_BUFFER_FLAG_BOT, align 8
  %160 = icmp eq i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @g_assert(i32 %161)
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @hb_buffer_set_replacement_codepoint(i32* %163, i32 -1)
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 @hb_buffer_get_replacement_codepoint(i32* %165)
  %167 = icmp eq i32 %166, -1
  %168 = zext i1 %167 to i32
  %169 = call i32 @g_assert(i32 %168)
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 @hb_buffer_reset(i32* %170)
  %172 = load i32*, i32** %5, align 8
  %173 = call i64 @hb_buffer_get_unicode_funcs(i32* %172)
  %174 = call i64 (...) @hb_unicode_funcs_get_default()
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @g_assert(i32 %176)
  %178 = load i32*, i32** %5, align 8
  %179 = call i64 @hb_buffer_get_direction(i32* %178)
  %180 = load i64, i64* @HB_DIRECTION_INVALID, align 8
  %181 = icmp eq i64 %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @g_assert(i32 %182)
  %184 = load i32*, i32** %5, align 8
  %185 = call i64 @hb_buffer_get_script(i32* %184)
  %186 = load i64, i64* @HB_SCRIPT_INVALID, align 8
  %187 = icmp eq i64 %185, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @g_assert(i32 %188)
  %190 = load i32*, i32** %5, align 8
  %191 = call i32* @hb_buffer_get_language(i32* %190)
  %192 = icmp eq i32* %191, null
  %193 = zext i1 %192 to i32
  %194 = call i32 @g_assert(i32 %193)
  %195 = load i32*, i32** %5, align 8
  %196 = call i64 @hb_buffer_get_flags(i32* %195)
  %197 = load i64, i64* @HB_BUFFER_FLAGS_DEFAULT, align 8
  %198 = icmp eq i64 %196, %197
  %199 = zext i1 %198 to i32
  %200 = call i32 @g_assert(i32 %199)
  %201 = load i32*, i32** %5, align 8
  %202 = call i32 @hb_buffer_get_replacement_codepoint(i32* %201)
  %203 = load i32, i32* @HB_BUFFER_REPLACEMENT_CODEPOINT_DEFAULT, align 4
  %204 = icmp eq i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @g_assert(i32 %205)
  ret void
}

declare dso_local i32 @g_assert(i32) #1

declare dso_local i64 @hb_buffer_get_unicode_funcs(i32*) #1

declare dso_local i64 @hb_unicode_funcs_get_default(...) #1

declare dso_local i64 @hb_buffer_get_direction(i32*) #1

declare dso_local i64 @hb_buffer_get_script(i32*) #1

declare dso_local i32* @hb_buffer_get_language(i32*) #1

declare dso_local i32* @hb_unicode_funcs_create(i32*) #1

declare dso_local i32 @hb_buffer_set_unicode_funcs(i32*, i32*) #1

declare dso_local i32 @hb_unicode_funcs_destroy(i32*) #1

declare dso_local i32 @hb_buffer_set_direction(i32*, i64) #1

declare dso_local i32 @hb_buffer_set_script(i32*, i64) #1

declare dso_local i32 @hb_buffer_set_language(i32*, i32*) #1

declare dso_local i32* @hb_language_from_string(i8*, i32) #1

declare dso_local i32 @hb_buffer_set_flags(i32*, i64) #1

declare dso_local i64 @hb_buffer_get_flags(i32*) #1

declare dso_local i32 @hb_buffer_set_replacement_codepoint(i32*, i32) #1

declare dso_local i32 @hb_buffer_get_replacement_codepoint(i32*) #1

declare dso_local i32 @hb_buffer_clear_contents(i32*) #1

declare dso_local i32 @hb_buffer_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
