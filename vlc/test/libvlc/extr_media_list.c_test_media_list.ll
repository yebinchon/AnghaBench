; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list.c_test_media_list.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list.c_test_media_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Testing media_list\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @test_media_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_media_list(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = call i32 @test_log(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %3, align 8
  %18 = call i32* @libvlc_new(i32 %16, i8** %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @libvlc_media_list_new(i32* %23)
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @libvlc_media_new_path(i32* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32* @libvlc_media_new_path(i32* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32* @libvlc_media_new_path(i32* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32*, i32** %11, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @libvlc_media_list_add_media(i32* %47, i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32*, i32** %11, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @libvlc_media_list_add_media(i32* %55, i32* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @libvlc_media_list_count(i32* %63)
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @libvlc_media_list_index_of_item(i32* %68, i32* %69)
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32*, i32** %11, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @libvlc_media_list_index_of_item(i32* %74, i32* %75)
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @libvlc_media_list_remove_index(i32* %80, i32 0)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32*, i32** %11, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @libvlc_media_list_index_of_item(i32* %87, i32* %88)
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @libvlc_media_list_add_media(i32* %93, i32* %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i32*, i32** %11, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @libvlc_media_list_add_media(i32* %101, i32* %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @libvlc_media_list_count(i32* %109)
  %111 = icmp eq i32 %110, 3
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i32*, i32** %11, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @libvlc_media_list_insert_media(i32* %114, i32* %115, i32 2)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i32*, i32** %11, align 8
  %123 = call i32 @libvlc_media_list_count(i32* %122)
  %124 = icmp eq i32 %123, 4
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load i32*, i32** %11, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 @libvlc_media_list_index_of_item(i32* %127, i32* %128)
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load i32*, i32** %11, align 8
  %134 = call i32* @libvlc_media_list_item_at_index(i32* %133, i32 0)
  store i32* %134, i32** %6, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = icmp eq i32* %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @libvlc_media_release(i32* %140)
  %142 = load i32*, i32** %11, align 8
  %143 = call i32* @libvlc_media_list_item_at_index(i32* %142, i32 2)
  store i32* %143, i32** %6, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = icmp eq i32* %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load i32*, i32** %6, align 8
  %150 = call i32 @libvlc_media_release(i32* %149)
  %151 = load i32*, i32** %11, align 8
  %152 = call i32 @libvlc_media_list_remove_index(i32* %151, i32 4)
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp eq i32 %153, -1
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load i32*, i32** %11, align 8
  %158 = call i32 @libvlc_media_list_remove_index(i32* %157, i32 100)
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp eq i32 %159, -1
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load i32*, i32** %11, align 8
  %164 = call i32 @libvlc_media_list_remove_index(i32* %163, i32 -1)
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp eq i32 %165, -1
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load i32*, i32** %11, align 8
  %170 = call i32* @libvlc_media_list_item_at_index(i32* %169, i32 4)
  store i32* %170, i32** %13, align 8
  %171 = load i32*, i32** %13, align 8
  %172 = icmp eq i32* %171, null
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  %175 = load i32*, i32** %11, align 8
  %176 = call i32* @libvlc_media_list_item_at_index(i32* %175, i32 100)
  store i32* %176, i32** %13, align 8
  %177 = load i32*, i32** %13, align 8
  %178 = icmp eq i32* %177, null
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load i32*, i32** %11, align 8
  %182 = call i32* @libvlc_media_list_item_at_index(i32* %181, i32 -1)
  store i32* %182, i32** %13, align 8
  %183 = load i32*, i32** %13, align 8
  %184 = icmp eq i32* %183, null
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load i32*, i32** %5, align 8
  %188 = call i32* @libvlc_media_new_path(i32* %187, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32* %188, i32** %10, align 8
  %189 = load i32*, i32** %10, align 8
  %190 = icmp ne i32* %189, null
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  store i32 0, i32* %14, align 4
  %193 = load i32*, i32** %11, align 8
  %194 = load i32*, i32** %10, align 8
  %195 = call i32 @libvlc_media_list_index_of_item(i32* %193, i32* %194)
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = icmp eq i32 %196, -1
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  %200 = load i32*, i32** %7, align 8
  %201 = call i32 @libvlc_media_release(i32* %200)
  %202 = load i32*, i32** %8, align 8
  %203 = call i32 @libvlc_media_release(i32* %202)
  %204 = load i32*, i32** %9, align 8
  %205 = call i32 @libvlc_media_release(i32* %204)
  %206 = load i32*, i32** %10, align 8
  %207 = call i32 @libvlc_media_release(i32* %206)
  %208 = load i32*, i32** %11, align 8
  %209 = call i32 @libvlc_media_list_release(i32* %208)
  %210 = load i32*, i32** %5, align 8
  %211 = call i32 @libvlc_release(i32* %210)
  ret void
}

declare dso_local i32 @test_log(i8*) #1

declare dso_local i32* @libvlc_new(i32, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @libvlc_media_list_new(i32*) #1

declare dso_local i32* @libvlc_media_new_path(i32*, i8*) #1

declare dso_local i32 @libvlc_media_list_add_media(i32*, i32*) #1

declare dso_local i32 @libvlc_media_list_count(i32*) #1

declare dso_local i32 @libvlc_media_list_index_of_item(i32*, i32*) #1

declare dso_local i32 @libvlc_media_list_remove_index(i32*, i32) #1

declare dso_local i32 @libvlc_media_list_insert_media(i32*, i32*, i32) #1

declare dso_local i32* @libvlc_media_list_item_at_index(i32*, i32) #1

declare dso_local i32 @libvlc_media_release(i32*) #1

declare dso_local i32 @libvlc_media_list_release(i32*) #1

declare dso_local i32 @libvlc_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
