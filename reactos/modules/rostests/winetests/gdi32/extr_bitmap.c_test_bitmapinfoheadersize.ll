; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_bitmapinfoheadersize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_bitmapinfoheadersize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"CreateDIBSection succeeded\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"CreateDIBSection error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_bitmapinfoheadersize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bitmapinfoheadersize() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_9__, align 4
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @GetDC(i32 0)
  store i32 %5, i32* %4, align 4
  %6 = call i32 @memset(%struct.TYPE_9__* %2, i32 0, i32 40)
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 100, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i32 512, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i32 24, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  store i32 3, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32* @CreateDIBSection(i32 %17, %struct.TYPE_9__* %2, i32 0, i32* null, i32* null, i32 0)
  store i32* %18, i32** %1, align 8
  %19 = load i32*, i32** %1, align 8
  %20 = icmp eq i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  store i32 4, i32* %24, align 4
  %25 = call i32 @SetLastError(i32 -559038737)
  %26 = load i32, i32* %4, align 4
  %27 = call i32* @CreateDIBSection(i32 %26, %struct.TYPE_9__* %2, i32 0, i32* null, i32* null, i32 0)
  store i32* %27, i32** %1, align 8
  %28 = load i32*, i32** %1, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @DeleteObject(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = call i32 @SetLastError(i32 -559038737)
  %40 = load i32, i32* %4, align 4
  %41 = call i32* @CreateDIBSection(i32 %40, %struct.TYPE_9__* %2, i32 0, i32* null, i32* null, i32 0)
  store i32* %41, i32** %1, align 8
  %42 = load i32*, i32** %1, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %0
  %45 = load i32*, i32** %1, align 8
  %46 = icmp ne i32* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @broken(i32 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %44, %0
  %52 = phi i1 [ true, %0 ], [ %50, %44 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 (...) @GetLastError()
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @DeleteObject(i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  store i32 40, i32* %59, align 4
  %60 = call i32 @SetLastError(i32 -559038737)
  %61 = load i32, i32* %4, align 4
  %62 = call i32* @CreateDIBSection(i32 %61, %struct.TYPE_9__* %2, i32 0, i32* null, i32* null, i32 0)
  store i32* %62, i32** %1, align 8
  %63 = load i32*, i32** %1, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %51
  %66 = load i32*, i32** %1, align 8
  %67 = icmp ne i32* %66, null
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @broken(i32 %69)
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %65, %51
  %73 = phi i1 [ true, %51 ], [ %71, %65 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 (...) @GetLastError()
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @DeleteObject(i32* %77)
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = call i32 @SetLastError(i32 -559038737)
  %84 = load i32, i32* %4, align 4
  %85 = call i32* @CreateDIBSection(i32 %84, %struct.TYPE_9__* %2, i32 0, i32* null, i32* null, i32 0)
  store i32* %85, i32** %1, align 8
  %86 = load i32*, i32** %1, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %72
  %89 = load i32*, i32** %1, align 8
  %90 = icmp ne i32* %89, null
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i64 @broken(i32 %92)
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %88, %72
  %96 = phi i1 [ true, %72 ], [ %94, %88 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 (...) @GetLastError()
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @DeleteObject(i32* %100)
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 4
  store i32 4, i32* %103, align 4
  %104 = call i32 @SetLastError(i32 -559038737)
  %105 = load i32, i32* %4, align 4
  %106 = call i32* @CreateDIBSection(i32 %105, %struct.TYPE_9__* %2, i32 0, i32* null, i32* null, i32 0)
  store i32* %106, i32** %1, align 8
  %107 = load i32*, i32** %1, align 8
  %108 = icmp ne i32* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 (...) @GetLastError()
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32*, i32** %1, align 8
  %113 = call i32 @DeleteObject(i32* %112)
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 4
  store i32 4, i32* %115, align 4
  %116 = call i32 @SetLastError(i32 -559038737)
  %117 = load i32, i32* %4, align 4
  %118 = call i32* @CreateDIBSection(i32 %117, %struct.TYPE_9__* %2, i32 0, i32* null, i32* null, i32 0)
  store i32* %118, i32** %1, align 8
  %119 = load i32*, i32** %1, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %128, label %121

121:                                              ; preds = %95
  %122 = load i32*, i32** %1, align 8
  %123 = icmp ne i32* %122, null
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i64 @broken(i32 %125)
  %127 = icmp ne i64 %126, 0
  br label %128

128:                                              ; preds = %121, %95
  %129 = phi i1 [ true, %95 ], [ %127, %121 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 (...) @GetLastError()
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load i32*, i32** %1, align 8
  %134 = call i32 @DeleteObject(i32* %133)
  %135 = call i32 @memset(%struct.TYPE_9__* %3, i32 0, i32 40)
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i32 100, i32* %137, align 4
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i32 512, i32* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  store i32 24, i32* %141, align 4
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  store i32 1, i32* %143, align 4
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 4
  store i32 3, i32* %145, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32* @CreateDIBSection(i32 %146, %struct.TYPE_9__* %3, i32 0, i32* null, i32* null, i32 0)
  store i32* %147, i32** %1, align 8
  %148 = load i32*, i32** %1, align 8
  %149 = icmp eq i32* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 4
  store i32 4, i32* %153, align 4
  %154 = call i32 @SetLastError(i32 -559038737)
  %155 = load i32, i32* %4, align 4
  %156 = call i32* @CreateDIBSection(i32 %155, %struct.TYPE_9__* %3, i32 0, i32* null, i32* null, i32 0)
  store i32* %156, i32** %1, align 8
  %157 = load i32*, i32** %1, align 8
  %158 = icmp ne i32* %157, null
  %159 = zext i1 %158 to i32
  %160 = call i32 (...) @GetLastError()
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  %162 = load i32*, i32** %1, align 8
  %163 = call i32 @DeleteObject(i32* %162)
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* %4, align 4
  %169 = call i32* @CreateDIBSection(i32 %168, %struct.TYPE_9__* %3, i32 0, i32* null, i32* null, i32 0)
  store i32* %169, i32** %1, align 8
  %170 = load i32*, i32** %1, align 8
  %171 = icmp eq i32* %170, null
  %172 = zext i1 %171 to i32
  %173 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 4
  store i32 40, i32* %175, align 4
  %176 = load i32, i32* %4, align 4
  %177 = call i32* @CreateDIBSection(i32 %176, %struct.TYPE_9__* %3, i32 0, i32* null, i32* null, i32 0)
  store i32* %177, i32** %1, align 8
  %178 = load i32*, i32** %1, align 8
  %179 = icmp eq i32* %178, null
  %180 = zext i1 %179 to i32
  %181 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %182 = load i32, i32* %4, align 4
  %183 = call i32 @ReleaseDC(i32 0, i32 %182)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32* @CreateDIBSection(i32, %struct.TYPE_9__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
