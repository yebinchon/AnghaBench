; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c__msg_get.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c__msg_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i64, i64, i64, i32*, i32*, i32*, i64, i32*, i32, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i64, i64, i64, i32, i32, i32*, i32*, i64 }

@free_msgq = common dso_local global i32 0, align 4
@nfree_msgq = common dso_local global i64 0, align 8
@m_tqe = common dso_local global i32 0, align 4
@msg_id = common dso_local global i64 0, align 8
@MSG_PARSE_OK = common dso_local global i32 0, align 4
@MSG_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msg* ()* @_msg_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msg* @_msg_get() #0 {
  %1 = alloca %struct.msg*, align 8
  %2 = alloca %struct.msg*, align 8
  %3 = call i32 @TAILQ_EMPTY(i32* @free_msgq)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* @nfree_msgq, align 8
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = call %struct.msg* @TAILQ_FIRST(i32* @free_msgq)
  store %struct.msg* %10, %struct.msg** %2, align 8
  %11 = load i64, i64* @nfree_msgq, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* @nfree_msgq, align 8
  %13 = load %struct.msg*, %struct.msg** %2, align 8
  %14 = load i32, i32* @m_tqe, align 4
  %15 = call i32 @TAILQ_REMOVE(i32* @free_msgq, %struct.msg* %13, i32 %14)
  br label %22

16:                                               ; preds = %0
  %17 = call %struct.msg* @nc_alloc(i32 336)
  store %struct.msg* %17, %struct.msg** %2, align 8
  %18 = load %struct.msg*, %struct.msg** %2, align 8
  %19 = icmp eq %struct.msg* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store %struct.msg* null, %struct.msg** %1, align 8
  br label %125

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %5
  %23 = load i64, i64* @msg_id, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @msg_id, align 8
  %25 = load %struct.msg*, %struct.msg** %2, align 8
  %26 = getelementptr inbounds %struct.msg, %struct.msg* %25, i32 0, i32 42
  store i64 %24, i64* %26, align 8
  %27 = load %struct.msg*, %struct.msg** %2, align 8
  %28 = getelementptr inbounds %struct.msg, %struct.msg* %27, i32 0, i32 41
  store i32* null, i32** %28, align 8
  %29 = load %struct.msg*, %struct.msg** %2, align 8
  %30 = getelementptr inbounds %struct.msg, %struct.msg* %29, i32 0, i32 40
  store i32* null, i32** %30, align 8
  %31 = load %struct.msg*, %struct.msg** %2, align 8
  %32 = getelementptr inbounds %struct.msg, %struct.msg* %31, i32 0, i32 39
  %33 = call i32 @rbtree_node_init(i32* %32)
  %34 = load %struct.msg*, %struct.msg** %2, align 8
  %35 = getelementptr inbounds %struct.msg, %struct.msg* %34, i32 0, i32 38
  %36 = call i32 @STAILQ_INIT(i32* %35)
  %37 = load %struct.msg*, %struct.msg** %2, align 8
  %38 = getelementptr inbounds %struct.msg, %struct.msg* %37, i32 0, i32 37
  store i64 0, i64* %38, align 8
  %39 = load %struct.msg*, %struct.msg** %2, align 8
  %40 = getelementptr inbounds %struct.msg, %struct.msg* %39, i32 0, i32 36
  store i64 0, i64* %40, align 8
  %41 = load %struct.msg*, %struct.msg** %2, align 8
  %42 = getelementptr inbounds %struct.msg, %struct.msg* %41, i32 0, i32 35
  store i64 0, i64* %42, align 8
  %43 = load %struct.msg*, %struct.msg** %2, align 8
  %44 = getelementptr inbounds %struct.msg, %struct.msg* %43, i32 0, i32 34
  store i32* null, i32** %44, align 8
  %45 = load %struct.msg*, %struct.msg** %2, align 8
  %46 = getelementptr inbounds %struct.msg, %struct.msg* %45, i32 0, i32 33
  store i32* null, i32** %46, align 8
  %47 = load %struct.msg*, %struct.msg** %2, align 8
  %48 = getelementptr inbounds %struct.msg, %struct.msg* %47, i32 0, i32 32
  store i32* null, i32** %48, align 8
  %49 = load %struct.msg*, %struct.msg** %2, align 8
  %50 = getelementptr inbounds %struct.msg, %struct.msg* %49, i32 0, i32 31
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* @MSG_PARSE_OK, align 4
  %52 = load %struct.msg*, %struct.msg** %2, align 8
  %53 = getelementptr inbounds %struct.msg, %struct.msg* %52, i32 0, i32 30
  store i32 %51, i32* %53, align 8
  %54 = load %struct.msg*, %struct.msg** %2, align 8
  %55 = getelementptr inbounds %struct.msg, %struct.msg* %54, i32 0, i32 29
  store i32* null, i32** %55, align 8
  %56 = load %struct.msg*, %struct.msg** %2, align 8
  %57 = getelementptr inbounds %struct.msg, %struct.msg* %56, i32 0, i32 28
  store i32* null, i32** %57, align 8
  %58 = load %struct.msg*, %struct.msg** %2, align 8
  %59 = getelementptr inbounds %struct.msg, %struct.msg* %58, i32 0, i32 27
  store i32* null, i32** %59, align 8
  %60 = load %struct.msg*, %struct.msg** %2, align 8
  %61 = getelementptr inbounds %struct.msg, %struct.msg* %60, i32 0, i32 26
  store i32* null, i32** %61, align 8
  %62 = load i32, i32* @MSG_UNKNOWN, align 4
  %63 = load %struct.msg*, %struct.msg** %2, align 8
  %64 = getelementptr inbounds %struct.msg, %struct.msg* %63, i32 0, i32 25
  store i32 %62, i32* %64, align 8
  %65 = call i32* @array_create(i32 1, i32 4)
  %66 = load %struct.msg*, %struct.msg** %2, align 8
  %67 = getelementptr inbounds %struct.msg, %struct.msg* %66, i32 0, i32 24
  store i32* %65, i32** %67, align 8
  %68 = load %struct.msg*, %struct.msg** %2, align 8
  %69 = getelementptr inbounds %struct.msg, %struct.msg* %68, i32 0, i32 24
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %22
  %73 = load %struct.msg*, %struct.msg** %2, align 8
  %74 = call i32 @nc_free(%struct.msg* %73)
  store %struct.msg* null, %struct.msg** %1, align 8
  br label %125

75:                                               ; preds = %22
  %76 = load %struct.msg*, %struct.msg** %2, align 8
  %77 = getelementptr inbounds %struct.msg, %struct.msg* %76, i32 0, i32 23
  store i64 0, i64* %77, align 8
  %78 = load %struct.msg*, %struct.msg** %2, align 8
  %79 = getelementptr inbounds %struct.msg, %struct.msg* %78, i32 0, i32 22
  store i32* null, i32** %79, align 8
  %80 = load %struct.msg*, %struct.msg** %2, align 8
  %81 = getelementptr inbounds %struct.msg, %struct.msg* %80, i32 0, i32 21
  store i32* null, i32** %81, align 8
  %82 = load %struct.msg*, %struct.msg** %2, align 8
  %83 = getelementptr inbounds %struct.msg, %struct.msg* %82, i32 0, i32 20
  store i32* null, i32** %83, align 8
  %84 = load %struct.msg*, %struct.msg** %2, align 8
  %85 = getelementptr inbounds %struct.msg, %struct.msg* %84, i32 0, i32 19
  store i64 0, i64* %85, align 8
  %86 = load %struct.msg*, %struct.msg** %2, align 8
  %87 = getelementptr inbounds %struct.msg, %struct.msg* %86, i32 0, i32 18
  store i64 0, i64* %87, align 8
  %88 = load %struct.msg*, %struct.msg** %2, align 8
  %89 = getelementptr inbounds %struct.msg, %struct.msg* %88, i32 0, i32 17
  store i64 0, i64* %89, align 8
  %90 = load %struct.msg*, %struct.msg** %2, align 8
  %91 = getelementptr inbounds %struct.msg, %struct.msg* %90, i32 0, i32 16
  store i32* null, i32** %91, align 8
  %92 = load %struct.msg*, %struct.msg** %2, align 8
  %93 = getelementptr inbounds %struct.msg, %struct.msg* %92, i32 0, i32 15
  store i32* null, i32** %93, align 8
  %94 = load %struct.msg*, %struct.msg** %2, align 8
  %95 = getelementptr inbounds %struct.msg, %struct.msg* %94, i32 0, i32 14
  store i64 0, i64* %95, align 8
  %96 = load %struct.msg*, %struct.msg** %2, align 8
  %97 = getelementptr inbounds %struct.msg, %struct.msg* %96, i32 0, i32 13
  store i64 0, i64* %97, align 8
  %98 = load %struct.msg*, %struct.msg** %2, align 8
  %99 = getelementptr inbounds %struct.msg, %struct.msg* %98, i32 0, i32 12
  store i64 0, i64* %99, align 8
  %100 = load %struct.msg*, %struct.msg** %2, align 8
  %101 = getelementptr inbounds %struct.msg, %struct.msg* %100, i32 0, i32 11
  store i64 0, i64* %101, align 8
  %102 = load %struct.msg*, %struct.msg** %2, align 8
  %103 = getelementptr inbounds %struct.msg, %struct.msg* %102, i32 0, i32 10
  store i64 0, i64* %103, align 8
  %104 = load %struct.msg*, %struct.msg** %2, align 8
  %105 = getelementptr inbounds %struct.msg, %struct.msg* %104, i32 0, i32 9
  store i64 0, i64* %105, align 8
  %106 = load %struct.msg*, %struct.msg** %2, align 8
  %107 = getelementptr inbounds %struct.msg, %struct.msg* %106, i32 0, i32 8
  store i64 0, i64* %107, align 8
  %108 = load %struct.msg*, %struct.msg** %2, align 8
  %109 = getelementptr inbounds %struct.msg, %struct.msg* %108, i32 0, i32 7
  store i64 0, i64* %109, align 8
  %110 = load %struct.msg*, %struct.msg** %2, align 8
  %111 = getelementptr inbounds %struct.msg, %struct.msg* %110, i32 0, i32 6
  store i64 0, i64* %111, align 8
  %112 = load %struct.msg*, %struct.msg** %2, align 8
  %113 = getelementptr inbounds %struct.msg, %struct.msg* %112, i32 0, i32 5
  store i64 0, i64* %113, align 8
  %114 = load %struct.msg*, %struct.msg** %2, align 8
  %115 = getelementptr inbounds %struct.msg, %struct.msg* %114, i32 0, i32 4
  store i64 0, i64* %115, align 8
  %116 = load %struct.msg*, %struct.msg** %2, align 8
  %117 = getelementptr inbounds %struct.msg, %struct.msg* %116, i32 0, i32 3
  store i64 0, i64* %117, align 8
  %118 = load %struct.msg*, %struct.msg** %2, align 8
  %119 = getelementptr inbounds %struct.msg, %struct.msg* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load %struct.msg*, %struct.msg** %2, align 8
  %121 = getelementptr inbounds %struct.msg, %struct.msg* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load %struct.msg*, %struct.msg** %2, align 8
  %123 = getelementptr inbounds %struct.msg, %struct.msg* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  %124 = load %struct.msg*, %struct.msg** %2, align 8
  store %struct.msg* %124, %struct.msg** %1, align 8
  br label %125

125:                                              ; preds = %75, %72, %20
  %126 = load %struct.msg*, %struct.msg** %1, align 8
  ret %struct.msg* %126
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.msg* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.msg*, i32) #1

declare dso_local %struct.msg* @nc_alloc(i32) #1

declare dso_local i32 @rbtree_node_init(i32*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32* @array_create(i32, i32) #1

declare dso_local i32 @nc_free(%struct.msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
