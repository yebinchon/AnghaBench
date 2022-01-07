; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_loop_fixup.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_loop_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32, i32, i64*, i64*, i64* }
%struct.TYPE_4__ = type { i32 }

@XI_JMP = common dso_local global i64 0, align 8
@XI_JMPs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @asm_loop_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_loop_fixup(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 7
  %8 = load i64*, i64** %7, align 8
  store i64* %8, i64** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 6
  %11 = load i64*, i64** %10, align 8
  store i64* %11, i64** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  %14 = load i64*, i64** %13, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %89

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  store i64* null, i64** %18, align 8
  %19 = load i64*, i64** %4, align 8
  %20 = ptrtoint i64* %19 to i64
  %21 = and i64 %20, 15
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @lua_assert(i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %16
  %30 = load i64*, i64** %3, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 -5
  store i64* %31, i64** %3, align 8
  %32 = load i64, i64* @XI_JMP, align 8
  %33 = load i64*, i64** %3, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %32, i64* %34, align 8
  %35 = load i64*, i64** %4, align 8
  %36 = load i64*, i64** %3, align 8
  %37 = ptrtoint i64* %35 to i64
  %38 = ptrtoint i64* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 8
  %41 = icmp sge i64 %40, -128
  %42 = zext i1 %41 to i32
  %43 = call i32 @lua_assert(i32 %42)
  %44 = load i64*, i64** %4, align 8
  %45 = load i64*, i64** %3, align 8
  %46 = ptrtoint i64* %44 to i64
  %47 = ptrtoint i64* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 8
  %50 = load i64*, i64** %3, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 -1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %66

56:                                               ; preds = %29
  %57 = load i64*, i64** %4, align 8
  %58 = load i64*, i64** %3, align 8
  %59 = ptrtoint i64* %57 to i64
  %60 = ptrtoint i64* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 8
  %63 = add nsw i64 %62, 2
  %64 = load i64*, i64** %3, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 -3
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %56, %29
  br label %88

67:                                               ; preds = %16
  %68 = load i64*, i64** %4, align 8
  %69 = load i64*, i64** %3, align 8
  %70 = ptrtoint i64* %68 to i64
  %71 = ptrtoint i64* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 8
  %74 = icmp sge i64 %73, -128
  %75 = zext i1 %74 to i32
  %76 = call i32 @lua_assert(i32 %75)
  %77 = load i64*, i64** %4, align 8
  %78 = load i64*, i64** %3, align 8
  %79 = ptrtoint i64* %77 to i64
  %80 = ptrtoint i64* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 8
  %83 = load i64*, i64** %3, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 -1
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* @XI_JMPs, align 8
  %86 = load i64*, i64** %3, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 -2
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %67, %66
  br label %160

89:                                               ; preds = %1
  %90 = load i64, i64* @XI_JMP, align 8
  %91 = load i64*, i64** %3, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 -5
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %127

97:                                               ; preds = %89
  %98 = load i64*, i64** %3, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 -5
  store i64* %99, i64** %3, align 8
  %100 = load i64*, i64** %4, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 4
  store i64* %101, i64** %5, align 8
  %102 = load i64*, i64** %4, align 8
  %103 = load i64*, i64** %3, align 8
  %104 = ptrtoint i64* %102 to i64
  %105 = ptrtoint i64* %103 to i64
  %106 = sub i64 %104, %105
  %107 = sdiv exact i64 %106, 8
  %108 = load i64*, i64** %3, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 -4
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %126

114:                                              ; preds = %97
  %115 = load i64*, i64** %4, align 8
  %116 = load i64*, i64** %3, align 8
  %117 = ptrtoint i64* %115 to i64
  %118 = ptrtoint i64* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 8
  %121 = add nsw i64 %120, 6
  %122 = load i64*, i64** %3, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 -10
  store i64 %121, i64* %123, align 8
  %124 = load i64*, i64** %4, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 8
  store i64* %125, i64** %5, align 8
  br label %126

126:                                              ; preds = %114, %97
  br label %138

127:                                              ; preds = %89
  %128 = load i64*, i64** %4, align 8
  %129 = load i64*, i64** %3, align 8
  %130 = ptrtoint i64* %128 to i64
  %131 = ptrtoint i64* %129 to i64
  %132 = sub i64 %130, %131
  %133 = sdiv exact i64 %132, 8
  %134 = load i64*, i64** %3, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 -4
  store i64 %133, i64* %135, align 8
  %136 = load i64*, i64** %4, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 3
  store i64* %137, i64** %5, align 8
  br label %138

138:                                              ; preds = %127, %126
  %139 = load i64*, i64** %5, align 8
  %140 = load i64*, i64** %3, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 -128
  %142 = icmp uge i64* %139, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %138
  %144 = load i64*, i64** %5, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 5
  store i64* %144, i64** %146, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  store i32 %154, i32* %158, align 4
  br label %159

159:                                              ; preds = %143, %138
  br label %160

160:                                              ; preds = %159, %88
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
