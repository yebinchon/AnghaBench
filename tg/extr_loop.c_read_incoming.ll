; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_read_incoming.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_read_incoming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.in_ev = type { i32, i8*, i32, %struct.bufferevent* }

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Read from incoming connection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @read_incoming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_incoming(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_ev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @E_WARNING, align 4
  %9 = call i32 @vlogprintf(i32 %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.in_ev*
  store %struct.in_ev* %11, %struct.in_ev** %5, align 8
  %12 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %13 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %12, i32 0, i32 3
  %14 = load %struct.bufferevent*, %struct.bufferevent** %13, align 8
  %15 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %16 = icmp eq %struct.bufferevent* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %20 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %21 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %24 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  %28 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %29 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 4096, %30
  %32 = call i64 @bufferevent_read(%struct.bufferevent* %19, i8* %27, i32 %31)
  %33 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %34 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 8
  br label %39

39:                                               ; preds = %2, %134
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %100, %39
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %43 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %101

46:                                               ; preds = %40
  %47 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %48 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %97

56:                                               ; preds = %46
  %57 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %58 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %63 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %69 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %72 = call i32 @interpreter_ex(i8* %70, %struct.in_ev* %71)
  br label %76

73:                                               ; preds = %56
  %74 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %75 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %61
  store i32 1, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  %79 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %80 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %84 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %87 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %94 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @memmove(i8* %85, i8* %92, i32 %95)
  store i32 0, i32* %6, align 4
  br label %100

97:                                               ; preds = %46
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %97, %76
  br label %40

101:                                              ; preds = %40
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %106 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %107 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %110 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  %114 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %115 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 4096, %116
  %118 = call i64 @bufferevent_read(%struct.bufferevent* %105, i8* %113, i32 %117)
  %119 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %120 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %118
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 8
  br label %134

125:                                              ; preds = %101
  %126 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %127 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 4096
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %132 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %131, i32 0, i32 2
  store i32 1, i32* %132, align 8
  br label %133

133:                                              ; preds = %130, %125
  br label %135

134:                                              ; preds = %104
  br label %39

135:                                              ; preds = %133
  ret void
}

declare dso_local i32 @vlogprintf(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @bufferevent_read(%struct.bufferevent*, i8*, i32) #1

declare dso_local i32 @interpreter_ex(i8*, %struct.in_ev*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
