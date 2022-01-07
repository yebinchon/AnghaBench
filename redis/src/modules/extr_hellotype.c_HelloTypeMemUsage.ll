; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloTypeMemUsage.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloTypeMemUsage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HelloTypeObject = type { i32, %struct.HelloTypeNode* }
%struct.HelloTypeNode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HelloTypeMemUsage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.HelloTypeObject*, align 8
  %4 = alloca %struct.HelloTypeNode*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.HelloTypeObject*
  store %struct.HelloTypeObject* %6, %struct.HelloTypeObject** %3, align 8
  %7 = load %struct.HelloTypeObject*, %struct.HelloTypeObject** %3, align 8
  %8 = getelementptr inbounds %struct.HelloTypeObject, %struct.HelloTypeObject* %7, i32 0, i32 1
  %9 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %8, align 8
  store %struct.HelloTypeNode* %9, %struct.HelloTypeNode** %4, align 8
  %10 = load %struct.HelloTypeObject*, %struct.HelloTypeObject** %3, align 8
  %11 = getelementptr inbounds %struct.HelloTypeObject, %struct.HelloTypeObject* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = add i64 16, %14
  ret i64 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
