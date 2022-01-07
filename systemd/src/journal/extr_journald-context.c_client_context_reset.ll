; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-context.c_client_context_reset.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-context.c_client_context_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i8*, i64, i8*, i64, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32, i8*, i32 }

@USEC_INFINITY = common dso_local global i32 0, align 4
@UID_INVALID = common dso_local global i8* null, align 8
@GID_INVALID = common dso_local global i32 0, align 4
@AUDIT_SESSION_INVALID = common dso_local global i32 0, align 4
@SD_ID128_NULL = common dso_local global i32 0, align 4
@NSEC_INFINITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_6__*)* @client_context_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_context_reset(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_6__* %5)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_6__* %7)
  %9 = load i32, i32* @USEC_INFINITY, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 27
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** @UID_INVALID, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 26
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @GID_INVALID, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 25
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 24
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @mfree(i8* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 24
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 23
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @mfree(i8* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 23
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 22
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @mfree(i8* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 22
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 21
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @mfree(i8* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 21
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @AUDIT_SESSION_INVALID, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 20
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** @UID_INVALID, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 19
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 18
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @mfree(i8* %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 18
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 17
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @mfree(i8* %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 17
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @UID_INVALID, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 16
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 15
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @mfree(i8* %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 15
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 14
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @mfree(i8* %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 14
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 13
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @mfree(i8* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 13
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 12
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @mfree(i8* %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 12
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @SD_ID128_NULL, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 11
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 10
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @mfree(i8* %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 10
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 9
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 8
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @mfree(i8* %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 8
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 7
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 6
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @mfree(i8* %108)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 6
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* @NSEC_INFINITY, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i32 -1, i32* %116, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i8* @mfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
