; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-lldp.c_test_multiple_neighbors_sorted.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-lldp.c_test_multiple_neighbors_sorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_multiple_neighbors_sorted.frame1 = internal constant [32 x i32] [i32 1, i32 128, i32 194, i32 0, i32 0, i32 3, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 136, i32 204, i32 2, i32 4, i32 1, i32 49, i32 47, i32 50, i32 4, i32 4, i32 2, i32 50, i32 47, i32 51, i32 6, i32 2, i32 0, i32 120, i32 0, i32 0], align 16
@test_multiple_neighbors_sorted.frame2 = internal constant [32 x i32] [i32 1, i32 128, i32 194, i32 0, i32 0, i32 3, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 136, i32 204, i32 2, i32 4, i32 1, i32 50, i32 47, i32 49, i32 4, i32 4, i32 2, i32 49, i32 47, i32 51, i32 6, i32 2, i32 0, i32 120, i32 0, i32 0], align 16
@test_multiple_neighbors_sorted.frame3 = internal constant [33 x i32] [i32 1, i32 128, i32 194, i32 0, i32 0, i32 3, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 136, i32 204, i32 2, i32 5, i32 1, i32 50, i32 47, i32 49, i32 48, i32 4, i32 4, i32 2, i32 49, i32 47, i32 48, i32 6, i32 2, i32 0, i32 120, i32 0, i32 0], align 16
@test_multiple_neighbors_sorted.frame4 = internal constant [33 x i32] [i32 1, i32 128, i32 194, i32 0, i32 0, i32 3, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 136, i32 204, i32 2, i32 5, i32 1, i32 50, i32 47, i32 49, i32 57, i32 4, i32 4, i32 2, i32 49, i32 47, i32 48, i32 6, i32 2, i32 0, i32 120, i32 0, i32 0], align 16
@test_multiple_neighbors_sorted.frame5 = internal constant [33 x i32] [i32 1, i32 128, i32 194, i32 0, i32 0, i32 3, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 136, i32 204, i32 2, i32 4, i32 1, i32 49, i32 47, i32 50, i32 4, i32 5, i32 2, i32 50, i32 47, i32 49, i32 48, i32 6, i32 2, i32 0, i32 120, i32 0, i32 0], align 16
@test_multiple_neighbors_sorted.frame6 = internal constant [33 x i32] [i32 1, i32 128, i32 194, i32 0, i32 0, i32 3, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 136, i32 204, i32 2, i32 4, i32 1, i32 49, i32 47, i32 50, i32 4, i32 5, i32 2, i32 50, i32 47, i32 51, i32 57, i32 6, i32 2, i32 0, i32 120, i32 0, i32 0], align 16
@test_multiple_neighbors_sorted.expected = internal global [12 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"1/2\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"2/10\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2/3\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"2/39\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2/1\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"1/3\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"1/0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"2/19\00", align 1
@lldp_handler_calls = common dso_local global i32 0, align 4
@lldp_handler = common dso_local global i32 0, align 4
@test_fd = common dso_local global i32* null, align 8
@SD_LLDP_CHASSIS_SUBTYPE_CHASSIS_COMPONENT = common dso_local global i32 0, align 4
@SD_LLDP_PORT_SUBTYPE_PORT_COMPONENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_multiple_neighbors_sorted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_multiple_neighbors_sorted(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* @lldp_handler_calls, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @lldp_handler, align 4
  %13 = call i64 @start_lldp(i32** %3, i32* %11, i32 %12, i32* null)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert_se(i32 %15)
  %17 = load i32*, i32** @test_fd, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @write(i32 %19, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @test_multiple_neighbors_sorted.frame1, i64 0, i64 0), i32 128)
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %21, 128
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert_se(i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @sd_event_run(i32* %25, i32 0)
  %27 = load i32*, i32** @test_fd, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @write(i32 %29, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @test_multiple_neighbors_sorted.frame2, i64 0, i64 0), i32 128)
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %31, 128
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert_se(i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @sd_event_run(i32* %35, i32 0)
  %37 = load i32*, i32** @test_fd, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @write(i32 %39, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @test_multiple_neighbors_sorted.frame3, i64 0, i64 0), i32 132)
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %41, 132
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert_se(i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @sd_event_run(i32* %45, i32 0)
  %47 = load i32*, i32** @test_fd, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @write(i32 %49, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @test_multiple_neighbors_sorted.frame4, i64 0, i64 0), i32 132)
  %51 = sext i32 %50 to i64
  %52 = icmp eq i64 %51, 132
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert_se(i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @sd_event_run(i32* %55, i32 0)
  %57 = load i32*, i32** @test_fd, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @write(i32 %59, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @test_multiple_neighbors_sorted.frame5, i64 0, i64 0), i32 132)
  %61 = sext i32 %60 to i64
  %62 = icmp eq i64 %61, 132
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert_se(i32 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @sd_event_run(i32* %65, i32 0)
  %67 = load i32*, i32** @test_fd, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @write(i32 %69, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @test_multiple_neighbors_sorted.frame6, i64 0, i64 0), i32 132)
  %71 = sext i32 %70 to i64
  %72 = icmp eq i64 %71, 132
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert_se(i32 %73)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @sd_event_run(i32* %75, i32 0)
  %77 = load i32, i32* @lldp_handler_calls, align 4
  %78 = icmp eq i32 %77, 6
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert_se(i32 %79)
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @sd_lldp_get_neighbors(i32* %81, i32*** %4)
  %83 = icmp eq i32 %82, 6
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert_se(i32 %84)
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %177, %1
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 6
  br i1 %88, label %89, label %180

89:                                               ; preds = %86
  %90 = load i32**, i32*** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = call i64 @sd_lldp_neighbor_get_chassis_id(i32* %94, i32* %6, i8** %7, i64* %8)
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert_se(i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @SD_LLDP_CHASSIS_SUBTYPE_CHASSIS_COMPONENT, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert_se(i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = mul nsw i32 2, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [12 x i8*], [12 x i8*]* @test_multiple_neighbors_sorted.expected, i64 0, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @strlen(i8* %108)
  store i64 %109, i64* %9, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %9, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert_se(i32 %113)
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %5, align 4
  %117 = mul nsw i32 2, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [12 x i8*], [12 x i8*]* @test_multiple_neighbors_sorted.expected, i64 0, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = call i64 @memcmp(i8* %115, i8* %120, i64 %121)
  %123 = icmp eq i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert_se(i32 %124)
  %126 = load i32**, i32*** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = call i64 @sd_lldp_neighbor_get_port_id(i32* %130, i32* %6, i8** %7, i64* %8)
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert_se(i32 %133)
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @SD_LLDP_PORT_SUBTYPE_PORT_COMPONENT, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert_se(i32 %138)
  %140 = load i32, i32* %5, align 4
  %141 = mul nsw i32 2, %140
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [12 x i8*], [12 x i8*]* @test_multiple_neighbors_sorted.expected, i64 0, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @strlen(i8* %145)
  store i64 %146, i64* %9, align 8
  %147 = load i64, i64* %8, align 8
  %148 = load i64, i64* %9, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert_se(i32 %150)
  %152 = load i8*, i8** %7, align 8
  %153 = load i32, i32* %5, align 4
  %154 = mul nsw i32 2, %153
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [12 x i8*], [12 x i8*]* @test_multiple_neighbors_sorted.expected, i64 0, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = load i64, i64* %9, align 8
  %160 = call i64 @memcmp(i8* %152, i8* %158, i64 %159)
  %161 = icmp eq i64 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert_se(i32 %162)
  %164 = load i32**, i32*** %4, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = call i64 @sd_lldp_neighbor_get_ttl(i32* %168, i32* %10)
  %170 = icmp eq i64 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert_se(i32 %171)
  %173 = load i32, i32* %10, align 4
  %174 = icmp eq i32 %173, 120
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert_se(i32 %175)
  br label %177

177:                                              ; preds = %89
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %5, align 4
  br label %86

180:                                              ; preds = %86
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %191, %180
  %182 = load i32, i32* %5, align 4
  %183 = icmp slt i32 %182, 6
  br i1 %183, label %184, label %194

184:                                              ; preds = %181
  %185 = load i32**, i32*** %4, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32*, i32** %185, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @sd_lldp_neighbor_unref(i32* %189)
  br label %191

191:                                              ; preds = %184
  %192 = load i32, i32* %5, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %5, align 4
  br label %181

194:                                              ; preds = %181
  %195 = load i32**, i32*** %4, align 8
  %196 = call i32 @free(i32** %195)
  %197 = load i32*, i32** %3, align 8
  %198 = call i64 @stop_lldp(i32* %197)
  %199 = icmp eq i64 %198, 0
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert_se(i32 %200)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @start_lldp(i32**, i32*, i32, i32*) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @sd_event_run(i32*, i32) #1

declare dso_local i32 @sd_lldp_get_neighbors(i32*, i32***) #1

declare dso_local i64 @sd_lldp_neighbor_get_chassis_id(i32*, i32*, i8**, i64*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i64 @sd_lldp_neighbor_get_port_id(i32*, i32*, i8**, i64*) #1

declare dso_local i64 @sd_lldp_neighbor_get_ttl(i32*, i32*) #1

declare dso_local i32 @sd_lldp_neighbor_unref(i32*) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i64 @stop_lldp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
