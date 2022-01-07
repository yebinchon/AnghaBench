; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cparse.c_cp_push_type.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cparse.c_cp_push_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@CT_TYPEDEF = common dso_local global i32 0, align 4
@CTF_QUAL = common dso_local global i32 0, align 4
@CTA_QUAL = common dso_local global i32 0, align 4
@CTMASK_CID = common dso_local global i32 0, align 4
@CTF_VECTOR = common dso_local global i32 0, align 4
@CTF_COMPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @cp_push_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_push_type(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.TYPE_10__* @ctype_get(i32 %12, i32 %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ctype_type(i32 %21)
  switch i32 %22, label %131 [
    i32 128, label %23
    i32 130, label %23
    i32 131, label %53
    i32 132, label %76
    i32 129, label %118
  ]

23:                                               ; preds = %2, %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = load i32, i32* @CT_TYPEDEF, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @CTINFO(i32 %25, i32 %26)
  %28 = call i64 @cp_push(%struct.TYPE_11__* %24, i32 %27, i32 0)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CTF_QUAL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %23
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = load i32, i32* @CTA_QUAL, align 4
  %38 = call i32 @CTATTRIB(i32 %37)
  %39 = call i32 @CTINFO(i32 131, i32 %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CTF_QUAL, align 4
  %44 = and i32 %42, %43
  %45 = call i64 @cp_push(%struct.TYPE_11__* %36, i32 %39, i32 %44)
  %46 = load i32, i32* @CTF_QUAL, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %35, %23
  br label %148

53:                                               ; preds = %2
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @CTA_QUAL, align 4
  %56 = call i32 @ctype_isxattrib(i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %58, %53
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @ctype_cid(i32 %67)
  call void @cp_push_type(%struct.TYPE_11__* %66, i32 %68)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @CTMASK_CID, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @cp_push(%struct.TYPE_11__* %69, i32 %73, i32 %74)
  br label %148

76:                                               ; preds = %2
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CTF_VECTOR, align 4
  %81 = load i32, i32* @CTF_COMPLEX, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %76
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CTF_QUAL, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @CTF_QUAL, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %85, %76
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @ctype_cid(i32 %101)
  call void @cp_push_type(%struct.TYPE_11__* %100, i32 %102)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @CTMASK_CID, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %104, %106
  %108 = load i32, i32* %7, align 4
  %109 = call i64 @cp_push(%struct.TYPE_11__* %103, i32 %107, i32 %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 4
  br label %148

118:                                              ; preds = %2
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i64 @cp_push(%struct.TYPE_11__* %125, i32 %126, i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i32 %121, i32* %130, align 4
  br label %148

131:                                              ; preds = %2
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @CTF_QUAL, align 4
  %138 = and i32 %136, %137
  %139 = or i32 %133, %138
  %140 = load i32, i32* %7, align 4
  %141 = call i64 @cp_push(%struct.TYPE_11__* %132, i32 %139, i32 %140)
  %142 = load i32, i32* @CTF_QUAL, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %131, %118, %99, %65, %52
  ret void
}

declare dso_local %struct.TYPE_10__* @ctype_get(i32, i32) #1

declare dso_local i32 @ctype_type(i32) #1

declare dso_local i64 @cp_push(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @CTINFO(i32, i32) #1

declare dso_local i32 @CTATTRIB(i32) #1

declare dso_local i32 @ctype_isxattrib(i32, i32) #1

declare dso_local i32 @ctype_cid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
