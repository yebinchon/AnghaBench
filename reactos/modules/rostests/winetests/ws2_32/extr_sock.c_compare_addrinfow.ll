; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_compare_addrinfow.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_compare_addrinfow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, %struct.TYPE_10__*, i32, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [22 x i8] c"Wrong flags %d != %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Wrong family %d != %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Wrong socktype %d != %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Wrong protocol %d != %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Wrong addrlen %lu != %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Wrong address data\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Wrong canonical name '%s' != '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Expected both names absent (%p != %p)\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Expected both addresses null (%p != %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_10__*)* @compare_addrinfow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compare_addrinfow(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  br label %5

5:                                                ; preds = %160, %2
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = icmp ne %struct.TYPE_10__* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = icmp ne %struct.TYPE_10__* %9, null
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i1 [ false, %5 ], [ %10, %8 ]
  br i1 %12, label %13, label %167

13:                                               ; preds = %11
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %39, i64 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  %51 = zext i1 %50 to i32
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %54, i64 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  %66 = zext i1 %65 to i32
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %69, i64 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  %81 = zext i1 %80 to i32
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %84, i64 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to %struct.TYPE_10__*
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to %struct.TYPE_10__*
  %103 = call i32 @min(%struct.TYPE_10__* %98, %struct.TYPE_10__* %102)
  %104 = call i32 @memcmp(i32 %91, i32 %94, i32 %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = icmp ne %struct.TYPE_10__* %111, null
  br i1 %112, label %113, label %138

113:                                              ; preds = %13
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = icmp ne %struct.TYPE_10__* %116, null
  br i1 %117, label %118, label %138

118:                                              ; preds = %113
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 5
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 5
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = call i32 @lstrcmpW(%struct.TYPE_10__* %121, %struct.TYPE_10__* %124)
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = call %struct.TYPE_10__* @wine_dbgstr_w(%struct.TYPE_10__* %131)
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 5
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = call %struct.TYPE_10__* @wine_dbgstr_w(%struct.TYPE_10__* %135)
  %137 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_10__* %132, %struct.TYPE_10__* %136)
  br label %159

138:                                              ; preds = %113, %13
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = icmp ne %struct.TYPE_10__* %141, null
  br i1 %142, label %149, label %143

143:                                              ; preds = %138
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = icmp ne %struct.TYPE_10__* %146, null
  %148 = xor i1 %147, true
  br label %149

149:                                              ; preds = %143, %138
  %150 = phi i1 [ false, %138 ], [ %148, %143 ]
  %151 = zext i1 %150 to i32
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 5
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_10__* %154, %struct.TYPE_10__* %157)
  br label %159

159:                                              ; preds = %149, %118
  br label %160

160:                                              ; preds = %159
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 7
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  store %struct.TYPE_10__* %163, %struct.TYPE_10__** %3, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 7
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  store %struct.TYPE_10__* %166, %struct.TYPE_10__** %4, align 8
  br label %5

167:                                              ; preds = %11
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %169 = icmp ne %struct.TYPE_10__* %168, null
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %172 = icmp ne %struct.TYPE_10__* %171, null
  %173 = xor i1 %172, true
  br label %174

174:                                              ; preds = %170, %167
  %175 = phi i1 [ false, %167 ], [ %173, %170 ]
  %176 = zext i1 %175 to i32
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %179 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_10__* %177, %struct.TYPE_10__* %178)
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @min(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @lstrcmpW(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @wine_dbgstr_w(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
