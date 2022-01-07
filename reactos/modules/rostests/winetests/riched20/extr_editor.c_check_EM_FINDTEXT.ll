; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_check_EM_FINDTEXT.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_check_EM_FINDTEXT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.find_s = type { i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@EM_FINDTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"EM_FINDTEXT(%s,%d,%u) '%s' in range(%d,%d), flags %08x, got start at %d, expected %d\0A\00", align 1
@EM_FINDTEXTW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"EM_FINDTEXTW(%s,%d,%u) '%s' in range(%d,%d), flags %08x, got start at %d, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.find_s*, i32, i32)* @check_EM_FINDTEXT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_EM_FINDTEXT(i32 %0, i8* %1, %struct.find_s* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.find_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.find_s* %2, %struct.find_s** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %104

16:                                               ; preds = %5
  %17 = call i32 @memset(%struct.TYPE_6__* %12, i32 0, i32 16)
  %18 = load %struct.find_s*, %struct.find_s** %8, align 8
  %19 = getelementptr inbounds %struct.find_s, %struct.find_s* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.find_s*, %struct.find_s** %8, align 8
  %24 = getelementptr inbounds %struct.find_s, %struct.find_s* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.find_s*, %struct.find_s** %8, align 8
  %29 = getelementptr inbounds %struct.find_s, %struct.find_s* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @atowstr(i64 %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @EM_FINDTEXT, align 4
  %35 = load %struct.find_s*, %struct.find_s** %8, align 8
  %36 = getelementptr inbounds %struct.find_s, %struct.find_s* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = ptrtoint %struct.TYPE_6__* %12 to i32
  %39 = call i32 @SendMessageA(i32 %33, i32 %34, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.find_s*, %struct.find_s** %8, align 8
  %42 = getelementptr inbounds %struct.find_s, %struct.find_s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %40, %43
  %45 = zext i1 %44 to i32
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.find_s*, %struct.find_s** %8, align 8
  %50 = getelementptr inbounds %struct.find_s, %struct.find_s* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.find_s*, %struct.find_s** %8, align 8
  %53 = getelementptr inbounds %struct.find_s, %struct.find_s* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.find_s*, %struct.find_s** %8, align 8
  %56 = getelementptr inbounds %struct.find_s, %struct.find_s* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.find_s*, %struct.find_s** %8, align 8
  %59 = getelementptr inbounds %struct.find_s, %struct.find_s* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.find_s*, %struct.find_s** %8, align 8
  %63 = getelementptr inbounds %struct.find_s, %struct.find_s* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %47, i32 %48, i64 %51, i32 %54, i32 %57, i32 %60, i32 %61, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @EM_FINDTEXTW, align 4
  %68 = load %struct.find_s*, %struct.find_s** %8, align 8
  %69 = getelementptr inbounds %struct.find_s, %struct.find_s* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = ptrtoint %struct.TYPE_6__* %12 to i32
  %72 = call i32 @SendMessageA(i32 %66, i32 %67, i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.find_s*, %struct.find_s** %8, align 8
  %75 = getelementptr inbounds %struct.find_s, %struct.find_s* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %73, %76
  %78 = zext i1 %77 to i32
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.find_s*, %struct.find_s** %8, align 8
  %83 = getelementptr inbounds %struct.find_s, %struct.find_s* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.find_s*, %struct.find_s** %8, align 8
  %86 = getelementptr inbounds %struct.find_s, %struct.find_s* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.find_s*, %struct.find_s** %8, align 8
  %89 = getelementptr inbounds %struct.find_s, %struct.find_s* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.find_s*, %struct.find_s** %8, align 8
  %92 = getelementptr inbounds %struct.find_s, %struct.find_s* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.find_s*, %struct.find_s** %8, align 8
  %96 = getelementptr inbounds %struct.find_s, %struct.find_s* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 %80, i32 %81, i64 %84, i32 %87, i32 %90, i32 %93, i32 %94, i32 %97)
  %99 = call i32 (...) @GetProcessHeap()
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = call i32 @HeapFree(i32 %99, i32 0, i8* %102)
  br label %153

104:                                              ; preds = %5
  %105 = call i32 @memset(%struct.TYPE_6__* %13, i32 0, i32 16)
  %106 = load %struct.find_s*, %struct.find_s** %8, align 8
  %107 = getelementptr inbounds %struct.find_s, %struct.find_s* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.find_s*, %struct.find_s** %8, align 8
  %112 = getelementptr inbounds %struct.find_s, %struct.find_s* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.find_s*, %struct.find_s** %8, align 8
  %117 = getelementptr inbounds %struct.find_s, %struct.find_s* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i64 %118, i64* %119, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @EM_FINDTEXT, align 4
  %122 = load %struct.find_s*, %struct.find_s** %8, align 8
  %123 = getelementptr inbounds %struct.find_s, %struct.find_s* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = ptrtoint %struct.TYPE_6__* %13 to i32
  %126 = call i32 @SendMessageA(i32 %120, i32 %121, i32 %124, i32 %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.find_s*, %struct.find_s** %8, align 8
  %129 = getelementptr inbounds %struct.find_s, %struct.find_s* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %127, %130
  %132 = zext i1 %131 to i32
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.find_s*, %struct.find_s** %8, align 8
  %137 = getelementptr inbounds %struct.find_s, %struct.find_s* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.find_s*, %struct.find_s** %8, align 8
  %140 = getelementptr inbounds %struct.find_s, %struct.find_s* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.find_s*, %struct.find_s** %8, align 8
  %143 = getelementptr inbounds %struct.find_s, %struct.find_s* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.find_s*, %struct.find_s** %8, align 8
  %146 = getelementptr inbounds %struct.find_s, %struct.find_s* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.find_s*, %struct.find_s** %8, align 8
  %150 = getelementptr inbounds %struct.find_s, %struct.find_s* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @ok(i32 %132, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8* %133, i32 %134, i32 %135, i64 %138, i32 %141, i32 %144, i32 %147, i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %104, %16
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @atowstr(i64) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i8*, i32, i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
