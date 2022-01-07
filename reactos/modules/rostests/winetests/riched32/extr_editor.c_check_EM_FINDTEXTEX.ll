; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_check_EM_FINDTEXTEX.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_check_EM_FINDTEXTEX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.find_s = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EM_FINDTEXTEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"EM_FINDTEXTEX(%s,%d) '%s' in range(%d,%d), flags %08x, start at %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"EM_FINDTEXTEX(%s,%d) '%s' in range(%d,%d), flags %08x, start at %d, expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"EM_FINDTEXTEX(%s,%d) '%s' in range(%d,%d), flags %08x, end at %d, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.find_s*, i32)* @check_EM_FINDTEXTEX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_EM_FINDTEXTEX(i32 %0, i8* %1, %struct.find_s* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.find_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.find_s* %2, %struct.find_s** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32 @memset(%struct.TYPE_7__* %10, i32 0, i32 20)
  %13 = load %struct.find_s*, %struct.find_s** %7, align 8
  %14 = getelementptr inbounds %struct.find_s, %struct.find_s* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.find_s*, %struct.find_s** %7, align 8
  %19 = getelementptr inbounds %struct.find_s, %struct.find_s* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.find_s*, %struct.find_s** %7, align 8
  %24 = getelementptr inbounds %struct.find_s, %struct.find_s* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 -559038737, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @EM_FINDTEXTEX, align 4
  %31 = load %struct.find_s*, %struct.find_s** %7, align 8
  %32 = getelementptr inbounds %struct.find_s, %struct.find_s* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = ptrtoint %struct.TYPE_7__* %10 to i32
  %35 = call i32 @SendMessageA(i32 %29, i32 %30, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.find_s*, %struct.find_s** %7, align 8
  %38 = getelementptr inbounds %struct.find_s, %struct.find_s* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  %41 = zext i1 %40 to i32
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.find_s*, %struct.find_s** %7, align 8
  %45 = getelementptr inbounds %struct.find_s, %struct.find_s* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.find_s*, %struct.find_s** %7, align 8
  %48 = getelementptr inbounds %struct.find_s, %struct.find_s* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.find_s*, %struct.find_s** %7, align 8
  %51 = getelementptr inbounds %struct.find_s, %struct.find_s* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.find_s*, %struct.find_s** %7, align 8
  %54 = getelementptr inbounds %struct.find_s, %struct.find_s* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i32, i8*, i8*, i32, i32, i32, i32, i32, i32, ...) @ok(i32 %41, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.find_s*, %struct.find_s** %7, align 8
  %62 = getelementptr inbounds %struct.find_s, %struct.find_s* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  %65 = zext i1 %64 to i32
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.find_s*, %struct.find_s** %7, align 8
  %69 = getelementptr inbounds %struct.find_s, %struct.find_s* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.find_s*, %struct.find_s** %7, align 8
  %72 = getelementptr inbounds %struct.find_s, %struct.find_s* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.find_s*, %struct.find_s** %7, align 8
  %75 = getelementptr inbounds %struct.find_s, %struct.find_s* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.find_s*, %struct.find_s** %7, align 8
  %78 = getelementptr inbounds %struct.find_s, %struct.find_s* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.find_s*, %struct.find_s** %7, align 8
  %84 = getelementptr inbounds %struct.find_s, %struct.find_s* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, i8*, i32, i32, i32, i32, i32, i32, ...) @ok(i32 %65, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32 %67, i32 %70, i32 %73, i32 %76, i32 %79, i32 %82, i32 %85)
  %87 = load %struct.find_s*, %struct.find_s** %7, align 8
  %88 = getelementptr inbounds %struct.find_s, %struct.find_s* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %4
  br label %101

92:                                               ; preds = %4
  %93 = load %struct.find_s*, %struct.find_s** %7, align 8
  %94 = getelementptr inbounds %struct.find_s, %struct.find_s* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.find_s*, %struct.find_s** %7, align 8
  %97 = getelementptr inbounds %struct.find_s, %struct.find_s* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @strlen(i32 %98)
  %100 = add nsw i32 %95, %99
  br label %101

101:                                              ; preds = %92, %91
  %102 = phi i32 [ -1, %91 ], [ %100, %92 ]
  store i32 %102, i32* %11, align 4
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %123, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, -559038737
  br label %118

118:                                              ; preds = %113, %108
  %119 = phi i1 [ false, %108 ], [ %117, %113 ]
  %120 = zext i1 %119 to i32
  %121 = call i64 @broken(i32 %120)
  %122 = icmp ne i64 %121, 0
  br label %123

123:                                              ; preds = %118, %101
  %124 = phi i1 [ true, %101 ], [ %122, %118 ]
  %125 = zext i1 %124 to i32
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.find_s*, %struct.find_s** %7, align 8
  %129 = getelementptr inbounds %struct.find_s, %struct.find_s* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.find_s*, %struct.find_s** %7, align 8
  %132 = getelementptr inbounds %struct.find_s, %struct.find_s* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.find_s*, %struct.find_s** %7, align 8
  %135 = getelementptr inbounds %struct.find_s, %struct.find_s* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.find_s*, %struct.find_s** %7, align 8
  %138 = getelementptr inbounds %struct.find_s, %struct.find_s* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i32 (i32, i8*, i8*, i32, i32, i32, i32, i32, i32, ...) @ok(i32 %125, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i8* %126, i32 %127, i32 %130, i32 %133, i32 %136, i32 %139, i32 %142, i32 %143)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i8*, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
