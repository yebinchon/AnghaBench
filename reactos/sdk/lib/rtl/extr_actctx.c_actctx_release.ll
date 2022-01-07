; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_actctx_release.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_actctx_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.dll_redirect*, %struct.dll_redirect*, %struct.dll_redirect*, %struct.dll_redirect*, %struct.dll_redirect*, %struct.dll_redirect*, %struct.dll_redirect*, %struct.dll_redirect*, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.dll_redirect = type { i32, i64, i32, i32, %struct.dll_redirect*, %struct.dll_redirect*, %struct.TYPE_7__, %struct.dll_redirect*, %struct.dll_redirect*, %struct.dll_redirect* }
%struct.TYPE_7__ = type { %struct.dll_redirect* }
%struct.TYPE_9__ = type { %struct.dll_redirect* }
%struct.TYPE_8__ = type { %struct.dll_redirect* }
%struct.assembly = type { i32, i64, i32, i32, %struct.assembly*, %struct.assembly*, %struct.TYPE_7__, %struct.assembly*, %struct.assembly*, %struct.assembly* }

@ACTIVATION_CONTEXT_WRAPPED = common dso_local global i32 0, align 4
@ActivationContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @actctx_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @actctx_release(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.dll_redirect*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.assembly*, align 8
  %7 = alloca %struct.dll_redirect*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 11
  %10 = call i32 @InterlockedExchangeAdd(i32* %9, i32 -1)
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %153

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %88, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %91

19:                                               ; preds = %13
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 8
  %22 = load %struct.dll_redirect*, %struct.dll_redirect** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %22, i64 %24
  %26 = bitcast %struct.dll_redirect* %25 to %struct.assembly*
  store %struct.assembly* %26, %struct.assembly** %6, align 8
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %54, %19
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.assembly*, %struct.assembly** %6, align 8
  %30 = getelementptr inbounds %struct.assembly, %struct.assembly* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %27
  %34 = load %struct.assembly*, %struct.assembly** %6, align 8
  %35 = getelementptr inbounds %struct.assembly, %struct.assembly* %34, i32 0, i32 7
  %36 = load %struct.assembly*, %struct.assembly** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.assembly, %struct.assembly* %36, i64 %38
  %40 = bitcast %struct.assembly* %39 to %struct.dll_redirect*
  store %struct.dll_redirect* %40, %struct.dll_redirect** %7, align 8
  %41 = load %struct.dll_redirect*, %struct.dll_redirect** %7, align 8
  %42 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %41, i32 0, i32 3
  %43 = call i32 @free_entity_array(i32* %42)
  %44 = call i32 (...) @RtlGetProcessHeap()
  %45 = load %struct.dll_redirect*, %struct.dll_redirect** %7, align 8
  %46 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %45, i32 0, i32 9
  %47 = load %struct.dll_redirect*, %struct.dll_redirect** %46, align 8
  %48 = call i32 @RtlFreeHeap(i32 %44, i32 0, %struct.dll_redirect* %47)
  %49 = call i32 (...) @RtlGetProcessHeap()
  %50 = load %struct.dll_redirect*, %struct.dll_redirect** %7, align 8
  %51 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %50, i32 0, i32 8
  %52 = load %struct.dll_redirect*, %struct.dll_redirect** %51, align 8
  %53 = call i32 @RtlFreeHeap(i32 %49, i32 0, %struct.dll_redirect* %52)
  br label %54

54:                                               ; preds = %33
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %27

57:                                               ; preds = %27
  %58 = call i32 (...) @RtlGetProcessHeap()
  %59 = load %struct.assembly*, %struct.assembly** %6, align 8
  %60 = getelementptr inbounds %struct.assembly, %struct.assembly* %59, i32 0, i32 7
  %61 = load %struct.assembly*, %struct.assembly** %60, align 8
  %62 = bitcast %struct.assembly* %61 to %struct.dll_redirect*
  %63 = call i32 @RtlFreeHeap(i32 %58, i32 0, %struct.dll_redirect* %62)
  %64 = call i32 (...) @RtlGetProcessHeap()
  %65 = load %struct.assembly*, %struct.assembly** %6, align 8
  %66 = getelementptr inbounds %struct.assembly, %struct.assembly* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.dll_redirect*, %struct.dll_redirect** %67, align 8
  %69 = call i32 @RtlFreeHeap(i32 %64, i32 0, %struct.dll_redirect* %68)
  %70 = call i32 (...) @RtlGetProcessHeap()
  %71 = load %struct.assembly*, %struct.assembly** %6, align 8
  %72 = getelementptr inbounds %struct.assembly, %struct.assembly* %71, i32 0, i32 5
  %73 = load %struct.assembly*, %struct.assembly** %72, align 8
  %74 = bitcast %struct.assembly* %73 to %struct.dll_redirect*
  %75 = call i32 @RtlFreeHeap(i32 %70, i32 0, %struct.dll_redirect* %74)
  %76 = call i32 (...) @RtlGetProcessHeap()
  %77 = load %struct.assembly*, %struct.assembly** %6, align 8
  %78 = getelementptr inbounds %struct.assembly, %struct.assembly* %77, i32 0, i32 4
  %79 = load %struct.assembly*, %struct.assembly** %78, align 8
  %80 = bitcast %struct.assembly* %79 to %struct.dll_redirect*
  %81 = call i32 @RtlFreeHeap(i32 %76, i32 0, %struct.dll_redirect* %80)
  %82 = load %struct.assembly*, %struct.assembly** %6, align 8
  %83 = getelementptr inbounds %struct.assembly, %struct.assembly* %82, i32 0, i32 3
  %84 = call i32 @free_entity_array(i32* %83)
  %85 = load %struct.assembly*, %struct.assembly** %6, align 8
  %86 = getelementptr inbounds %struct.assembly, %struct.assembly* %85, i32 0, i32 2
  %87 = call i32 @free_assembly_identity(i32* %86)
  br label %88

88:                                               ; preds = %57
  %89 = load i32, i32* %4, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %13

91:                                               ; preds = %13
  %92 = call i32 (...) @RtlGetProcessHeap()
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 10
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load %struct.dll_redirect*, %struct.dll_redirect** %95, align 8
  %97 = call i32 @RtlFreeHeap(i32 %92, i32 0, %struct.dll_redirect* %96)
  %98 = call i32 (...) @RtlGetProcessHeap()
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load %struct.dll_redirect*, %struct.dll_redirect** %101, align 8
  %103 = call i32 @RtlFreeHeap(i32 %98, i32 0, %struct.dll_redirect* %102)
  %104 = call i32 (...) @RtlGetProcessHeap()
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 8
  %107 = load %struct.dll_redirect*, %struct.dll_redirect** %106, align 8
  %108 = call i32 @RtlFreeHeap(i32 %104, i32 0, %struct.dll_redirect* %107)
  %109 = call i32 (...) @RtlGetProcessHeap()
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 7
  %112 = load %struct.dll_redirect*, %struct.dll_redirect** %111, align 8
  %113 = call i32 @RtlFreeHeap(i32 %109, i32 0, %struct.dll_redirect* %112)
  %114 = call i32 (...) @RtlGetProcessHeap()
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 6
  %117 = load %struct.dll_redirect*, %struct.dll_redirect** %116, align 8
  %118 = call i32 @RtlFreeHeap(i32 %114, i32 0, %struct.dll_redirect* %117)
  %119 = call i32 (...) @RtlGetProcessHeap()
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 5
  %122 = load %struct.dll_redirect*, %struct.dll_redirect** %121, align 8
  %123 = call i32 @RtlFreeHeap(i32 %119, i32 0, %struct.dll_redirect* %122)
  %124 = call i32 (...) @RtlGetProcessHeap()
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 4
  %127 = load %struct.dll_redirect*, %struct.dll_redirect** %126, align 8
  %128 = call i32 @RtlFreeHeap(i32 %124, i32 0, %struct.dll_redirect* %127)
  %129 = call i32 (...) @RtlGetProcessHeap()
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 3
  %132 = load %struct.dll_redirect*, %struct.dll_redirect** %131, align 8
  %133 = call i32 @RtlFreeHeap(i32 %129, i32 0, %struct.dll_redirect* %132)
  %134 = call i32 (...) @RtlGetProcessHeap()
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 2
  %137 = load %struct.dll_redirect*, %struct.dll_redirect** %136, align 8
  %138 = call i32 @RtlFreeHeap(i32 %134, i32 0, %struct.dll_redirect* %137)
  %139 = call i32 (...) @RtlGetProcessHeap()
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load %struct.dll_redirect*, %struct.dll_redirect** %141, align 8
  %143 = call i32 @RtlFreeHeap(i32 %139, i32 0, %struct.dll_redirect* %142)
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %145 = load i32, i32* @ACTIVATION_CONTEXT_WRAPPED, align 4
  %146 = load i32, i32* @ActivationContext, align 4
  %147 = call %struct.dll_redirect* @CONTAINING_RECORD(%struct.TYPE_10__* %144, i32 %145, i32 %146)
  store %struct.dll_redirect* %147, %struct.dll_redirect** %3, align 8
  %148 = load %struct.dll_redirect*, %struct.dll_redirect** %3, align 8
  %149 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %148, i32 0, i32 1
  store i64 0, i64* %149, align 8
  %150 = call i32 (...) @RtlGetProcessHeap()
  %151 = load %struct.dll_redirect*, %struct.dll_redirect** %3, align 8
  %152 = call i32 @RtlFreeHeap(i32 %150, i32 0, %struct.dll_redirect* %151)
  br label %153

153:                                              ; preds = %91, %1
  ret void
}

declare dso_local i32 @InterlockedExchangeAdd(i32*, i32) #1

declare dso_local i32 @free_entity_array(i32*) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, %struct.dll_redirect*) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @free_assembly_identity(i32*) #1

declare dso_local %struct.dll_redirect* @CONTAINING_RECORD(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
