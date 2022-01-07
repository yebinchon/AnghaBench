; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_savedc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_savedc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"CreateDC rets %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_savedc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_savedc() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32* @CreateDCA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* null)
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = icmp ne i32* %4, null
  %6 = zext i1 %5 to i32
  %7 = load i32*, i32** %1, align 8
  %8 = ptrtoint i32* %7 to i32
  %9 = call i32 @ok(i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @SaveDC(i32* %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @SaveDC(i32* %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 2
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @SaveDC(i32* %24)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %26, 3
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @RestoreDC(i32* %31, i32 -1)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @SaveDC(i32* %36)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %38, 3
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @RestoreDC(i32* %43, i32 1)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @SaveDC(i32* %48)
  store i32 %49, i32* %2, align 4
  %50 = load i32, i32* %2, align 4
  %51 = icmp eq i32 %50, 1
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @SaveDC(i32* %55)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = icmp eq i32 %57, 2
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @SaveDC(i32* %62)
  store i32 %63, i32* %2, align 4
  %64 = load i32, i32* %2, align 4
  %65 = icmp eq i32 %64, 3
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @RestoreDC(i32* %69, i32 -2)
  store i32 %70, i32* %2, align 4
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @SaveDC(i32* %74)
  store i32 %75, i32* %2, align 4
  %76 = load i32, i32* %2, align 4
  %77 = icmp eq i32 %76, 2
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @RestoreDC(i32* %81, i32 -2)
  store i32 %82, i32* %2, align 4
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @SaveDC(i32* %86)
  store i32 %87, i32* %2, align 4
  %88 = load i32, i32* %2, align 4
  %89 = icmp eq i32 %88, 1
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @SaveDC(i32* %93)
  store i32 %94, i32* %2, align 4
  %95 = load i32, i32* %2, align 4
  %96 = icmp eq i32 %95, 2
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @RestoreDC(i32* %100, i32 -4)
  store i32 %101, i32* %2, align 4
  %102 = load i32, i32* %2, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %2, align 4
  %107 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32*, i32** %1, align 8
  %109 = call i32 @RestoreDC(i32* %108, i32 3)
  store i32 %109, i32* %2, align 4
  %110 = load i32, i32* %2, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %2, align 4
  %115 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32*, i32** %1, align 8
  %117 = call i32 @RestoreDC(i32* %116, i32 -3)
  store i32 %117, i32* %2, align 4
  %118 = load i32, i32* %2, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %0
  %121 = load i32, i32* %2, align 4
  %122 = call i64 @broken(i32 %121)
  %123 = icmp ne i64 %122, 0
  br label %124

124:                                              ; preds = %120, %0
  %125 = phi i1 [ true, %0 ], [ %123, %120 ]
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %2, align 4
  %128 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = load i32*, i32** %1, align 8
  %130 = call i32 @RestoreDC(i32* %129, i32 -3)
  store i32 %130, i32* %2, align 4
  %131 = load i32, i32* %2, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %2, align 4
  %136 = call i32 @ok(i32 %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  %137 = load i32*, i32** %1, align 8
  %138 = call i32 @SaveDC(i32* %137)
  store i32 %138, i32* %2, align 4
  %139 = load i32, i32* %2, align 4
  %140 = icmp eq i32 %139, 3
  br i1 %140, label %147, label %141

141:                                              ; preds = %124
  %142 = load i32, i32* %2, align 4
  %143 = icmp eq i32 %142, 1
  %144 = zext i1 %143 to i32
  %145 = call i64 @broken(i32 %144)
  %146 = icmp ne i64 %145, 0
  br label %147

147:                                              ; preds = %141, %124
  %148 = phi i1 [ true, %124 ], [ %146, %141 ]
  %149 = zext i1 %148 to i32
  %150 = load i32, i32* %2, align 4
  %151 = call i32 @ok(i32 %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  %152 = load i32*, i32** %1, align 8
  %153 = call i32 @RestoreDC(i32* %152, i32 0)
  store i32 %153, i32* %2, align 4
  %154 = load i32, i32* %2, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load i32, i32* %2, align 4
  %158 = call i64 @broken(i32 %157)
  %159 = icmp ne i64 %158, 0
  br label %160

160:                                              ; preds = %156, %147
  %161 = phi i1 [ true, %147 ], [ %159, %156 ]
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %2, align 4
  %164 = call i32 @ok(i32 %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load i32*, i32** %1, align 8
  %166 = call i32 @RestoreDC(i32* %165, i32 0)
  store i32 %166, i32* %2, align 4
  %167 = load i32, i32* %2, align 4
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = load i32, i32* %2, align 4
  %172 = call i32 @ok(i32 %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %171)
  %173 = load i32*, i32** %1, align 8
  %174 = call i32 @RestoreDC(i32* %173, i32 1)
  store i32 %174, i32* %2, align 4
  %175 = load i32, i32* %2, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %160
  %178 = load i32, i32* %2, align 4
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = call i64 @broken(i32 %181)
  %183 = icmp ne i64 %182, 0
  br label %184

184:                                              ; preds = %177, %160
  %185 = phi i1 [ true, %160 ], [ %183, %177 ]
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %2, align 4
  %188 = call i32 @ok(i32 %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %187)
  %189 = load i32*, i32** %1, align 8
  %190 = call i32 @DeleteDC(i32* %189)
  ret void
}

declare dso_local i32* @CreateDCA(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @SaveDC(i32*) #1

declare dso_local i32 @RestoreDC(i32*, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @DeleteDC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
