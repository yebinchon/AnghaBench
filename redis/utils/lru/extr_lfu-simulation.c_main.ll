; ModuleID = '/home/carl/AnghaBench/redis/utils/lru/extr_lfu-simulation.c_main.c'
source_filename = "/home/carl/AnghaBench/redis/utils/lru/extr_lfu-simulation.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64, i64, i8*, i8* }

@keyspace_size = common dso_local global i32 0, align 4
@COUNTER_INIT_VAL = common dso_local global i8* null, align 8
@switch_after = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"=============================\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Current minutes time: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Access method: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"power-law\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"flat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %9 = call i64 @time(i32* null)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %2, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i32, i32* @keyspace_size, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 32, %13
  %15 = trunc i64 %14 to i32
  %16 = call %struct.entry* @malloc(i32 %15)
  store %struct.entry* %16, %struct.entry** %5, align 8
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %43, %0
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @keyspace_size, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = load i8*, i8** @COUNTER_INIT_VAL, align 8
  %24 = load %struct.entry*, %struct.entry** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.entry, %struct.entry* %24, i64 %25
  %27 = getelementptr inbounds %struct.entry, %struct.entry* %26, i32 0, i32 3
  store i8* %23, i8** %27, align 8
  %28 = load i64, i64* %2, align 8
  %29 = call i8* @to_16bit_minutes(i64 %28)
  %30 = load %struct.entry*, %struct.entry** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.entry, %struct.entry* %30, i64 %31
  %33 = getelementptr inbounds %struct.entry, %struct.entry* %32, i32 0, i32 2
  store i8* %29, i8** %33, align 8
  %34 = load %struct.entry*, %struct.entry** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.entry, %struct.entry* %34, i64 %35
  %37 = getelementptr inbounds %struct.entry, %struct.entry* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = call i64 @time(i32* null)
  %39 = load %struct.entry*, %struct.entry** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.entry, %struct.entry* %39, i64 %40
  %42 = getelementptr inbounds %struct.entry, %struct.entry* %41, i32 0, i32 0
  store i64 %38, i64* %42, align 8
  br label %43

43:                                               ; preds = %22
  %44 = load i64, i64* %6, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %17

46:                                               ; preds = %17
  br label %47

47:                                               ; preds = %46, %200
  %48 = call i64 @time(i32* null)
  store i64 %48, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %49

49:                                               ; preds = %60, %47
  %50 = load i64, i64* %6, align 8
  %51 = icmp slt i64 %50, 3
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load %struct.entry*, %struct.entry** %5, align 8
  %54 = call i32 (...) @rand()
  %55 = load i32, i32* @keyspace_size, align 4
  %56 = srem i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.entry, %struct.entry* %53, i64 %57
  %59 = call i32 @scan_entry(%struct.entry* %58)
  br label %60

60:                                               ; preds = %52
  %61 = load i64, i64* %6, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %49

63:                                               ; preds = %49
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %2, align 8
  %66 = sub nsw i64 %64, %65
  %67 = load i64, i64* @switch_after, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %63
  store i64 1, i64* %8, align 8
  br label %70

70:                                               ; preds = %81, %69
  %71 = call i32 (...) @rand()
  %72 = srem i32 %71, 21
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* @keyspace_size, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %75, %77
  br label %79

79:                                               ; preds = %74, %70
  %80 = phi i1 [ false, %70 ], [ %78, %74 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i64, i64* %8, align 8
  %83 = mul nsw i64 %82, 2
  store i64 %83, i64* %8, align 8
  br label %70

84:                                               ; preds = %79
  %85 = load i64, i64* %8, align 8
  %86 = load i32, i32* @keyspace_size, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp sgt i64 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @keyspace_size, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %89, %84
  %93 = call i32 (...) @rand()
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %8, align 8
  %96 = srem i64 %94, %95
  store i64 %96, i64* %8, align 8
  br label %102

97:                                               ; preds = %63
  %98 = call i32 (...) @rand()
  %99 = load i32, i32* @keyspace_size, align 4
  %100 = srem i32 %98, %99
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %8, align 8
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i64, i64* %8, align 8
  %104 = icmp slt i64 %103, 10
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i64, i64* %8, align 8
  %107 = icmp sgt i64 %106, 14
  br i1 %107, label %108, label %119

108:                                              ; preds = %105, %102
  %109 = load i64, i64* %8, align 8
  %110 = load i32, i32* @keyspace_size, align 4
  %111 = sub nsw i32 %110, 5
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %109, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load %struct.entry*, %struct.entry** %5, align 8
  %116 = load i64, i64* %8, align 8
  %117 = getelementptr inbounds %struct.entry, %struct.entry* %115, i64 %116
  %118 = call i32 @access_entry(%struct.entry* %117)
  br label %119

119:                                              ; preds = %114, %108, %105
  %120 = load i64, i64* %3, align 8
  %121 = load i64, i64* %7, align 8
  %122 = icmp sle i64 %120, %121
  br i1 %122, label %123, label %150

123:                                              ; preds = %119
  %124 = call i32 (...) @rand()
  %125 = srem i32 %124, 10
  %126 = add nsw i32 10, %125
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %8, align 8
  %128 = load i8*, i8** @COUNTER_INIT_VAL, align 8
  %129 = load %struct.entry*, %struct.entry** %5, align 8
  %130 = load i64, i64* %8, align 8
  %131 = getelementptr inbounds %struct.entry, %struct.entry* %129, i64 %130
  %132 = getelementptr inbounds %struct.entry, %struct.entry* %131, i32 0, i32 3
  store i8* %128, i8** %132, align 8
  %133 = call i64 @time(i32* null)
  %134 = call i8* @to_16bit_minutes(i64 %133)
  %135 = load %struct.entry*, %struct.entry** %5, align 8
  %136 = load i64, i64* %8, align 8
  %137 = getelementptr inbounds %struct.entry, %struct.entry* %135, i64 %136
  %138 = getelementptr inbounds %struct.entry, %struct.entry* %137, i32 0, i32 2
  store i8* %134, i8** %138, align 8
  %139 = load %struct.entry*, %struct.entry** %5, align 8
  %140 = load i64, i64* %8, align 8
  %141 = getelementptr inbounds %struct.entry, %struct.entry* %139, i64 %140
  %142 = getelementptr inbounds %struct.entry, %struct.entry* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  %143 = call i64 @time(i32* null)
  %144 = load %struct.entry*, %struct.entry** %5, align 8
  %145 = load i64, i64* %8, align 8
  %146 = getelementptr inbounds %struct.entry, %struct.entry* %144, i64 %145
  %147 = getelementptr inbounds %struct.entry, %struct.entry* %146, i32 0, i32 0
  store i64 %143, i64* %147, align 8
  %148 = load i64, i64* %7, align 8
  %149 = add nsw i64 %148, 10
  store i64 %149, i64* %3, align 8
  br label %150

150:                                              ; preds = %123, %119
  %151 = load i64, i64* %4, align 8
  %152 = load i64, i64* %7, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %200

154:                                              ; preds = %150
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %156 = load i64, i64* %7, align 8
  %157 = call i8* @to_16bit_minutes(i64 %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  %160 = load i64, i64* %7, align 8
  %161 = load i64, i64* %2, align 8
  %162 = sub nsw i64 %160, %161
  %163 = load i64, i64* @switch_after, align 8
  %164 = icmp slt i64 %162, %163
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %166)
  store i64 0, i64* %6, align 8
  br label %168

168:                                              ; preds = %177, %154
  %169 = load i64, i64* %6, align 8
  %170 = icmp slt i64 %169, 20
  br i1 %170, label %171, label %180

171:                                              ; preds = %168
  %172 = load i64, i64* %6, align 8
  %173 = load %struct.entry*, %struct.entry** %5, align 8
  %174 = load i64, i64* %6, align 8
  %175 = getelementptr inbounds %struct.entry, %struct.entry* %173, i64 %174
  %176 = call i32 @show_entry(i64 %172, %struct.entry* %175)
  br label %177

177:                                              ; preds = %171
  %178 = load i64, i64* %6, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %6, align 8
  br label %168

180:                                              ; preds = %168
  %181 = load i32, i32* @keyspace_size, align 4
  %182 = sub nsw i32 %181, 20
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %6, align 8
  br label %184

184:                                              ; preds = %195, %180
  %185 = load i64, i64* %6, align 8
  %186 = load i32, i32* @keyspace_size, align 4
  %187 = sext i32 %186 to i64
  %188 = icmp slt i64 %185, %187
  br i1 %188, label %189, label %198

189:                                              ; preds = %184
  %190 = load i64, i64* %6, align 8
  %191 = load %struct.entry*, %struct.entry** %5, align 8
  %192 = load i64, i64* %6, align 8
  %193 = getelementptr inbounds %struct.entry, %struct.entry* %191, i64 %192
  %194 = call i32 @show_entry(i64 %190, %struct.entry* %193)
  br label %195

195:                                              ; preds = %189
  %196 = load i64, i64* %6, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %6, align 8
  br label %184

198:                                              ; preds = %184
  %199 = load i64, i64* %7, align 8
  store i64 %199, i64* %4, align 8
  br label %200

200:                                              ; preds = %198, %150
  br label %47
}

declare dso_local i64 @time(i32*) #1

declare dso_local %struct.entry* @malloc(i32) #1

declare dso_local i8* @to_16bit_minutes(i64) #1

declare dso_local i32 @scan_entry(%struct.entry*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @access_entry(%struct.entry*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @show_entry(i64, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
