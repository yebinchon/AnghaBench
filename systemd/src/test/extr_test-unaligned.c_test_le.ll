; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-unaligned.c_test_le.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-unaligned.c_test_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@data = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_le() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = load i32*, i32** @data, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 0
  %4 = call i32 @unaligned_read_le16(i32* %3)
  %5 = icmp eq i32 %4, 256
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert_se(i32 %6)
  %8 = load i32*, i32** @data, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = call i32 @unaligned_read_le16(i32* %9)
  %11 = icmp eq i32 %10, 513
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = load i32*, i32** @data, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = call i32 @unaligned_read_le32(i32* %15)
  %17 = icmp eq i32 %16, 50462976
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  %20 = load i32*, i32** @data, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = call i32 @unaligned_read_le32(i32* %21)
  %23 = icmp eq i32 %22, 67305985
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_se(i32 %24)
  %26 = load i32*, i32** @data, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = call i32 @unaligned_read_le32(i32* %27)
  %29 = icmp eq i32 %28, 84148994
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert_se(i32 %30)
  %32 = load i32*, i32** @data, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = call i32 @unaligned_read_le32(i32* %33)
  %35 = icmp eq i32 %34, 100992003
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  %38 = load i32*, i32** @data, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @unaligned_read_le64(i32* %39)
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %41, 506097522914230528
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert_se(i32 %43)
  %45 = load i32*, i32** @data, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = call i32 @unaligned_read_le64(i32* %46)
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %48, 578437695752307201
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert_se(i32 %50)
  %52 = load i32*, i32** @data, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = call i32 @unaligned_read_le64(i32* %53)
  %55 = sext i32 %54 to i64
  %56 = icmp eq i64 %55, 650777868590383874
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert_se(i32 %57)
  %59 = load i32*, i32** @data, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = call i32 @unaligned_read_le64(i32* %60)
  %62 = sext i32 %61 to i64
  %63 = icmp eq i64 %62, 723118041428460547
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert_se(i32 %64)
  %66 = load i32*, i32** @data, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = call i32 @unaligned_read_le64(i32* %67)
  %69 = sext i32 %68 to i64
  %70 = icmp eq i64 %69, 795458214266537220
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert_se(i32 %71)
  %73 = load i32*, i32** @data, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = call i32 @unaligned_read_le64(i32* %74)
  %76 = sext i32 %75 to i64
  %77 = icmp eq i64 %76, 867798387104613893
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert_se(i32 %78)
  %80 = load i32*, i32** @data, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 6
  %82 = call i32 @unaligned_read_le64(i32* %81)
  %83 = sext i32 %82 to i64
  %84 = icmp eq i64 %83, 940138559942690566
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert_se(i32 %85)
  %87 = load i32*, i32** @data, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 7
  %89 = call i32 @unaligned_read_le64(i32* %88)
  %90 = sext i32 %89 to i64
  %91 = icmp eq i64 %90, 1012478732780767239
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert_se(i32 %92)
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %95 = call i32 @zero(i32* %94)
  %96 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %97 = call i32 @unaligned_write_le16(i32* %96, i32 256)
  %98 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %99 = load i32*, i32** @data, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = call i64 @memcmp(i32* %98, i32* %100, i32 4)
  %102 = icmp eq i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert_se(i32 %103)
  %105 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %106 = call i32 @zero(i32* %105)
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 1
  %108 = call i32 @unaligned_write_le16(i32* %107, i32 513)
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 1
  %110 = load i32*, i32** @data, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = call i64 @memcmp(i32* %109, i32* %111, i32 4)
  %113 = icmp eq i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert_se(i32 %114)
  %116 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %117 = call i32 @zero(i32* %116)
  %118 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %119 = call i32 @unaligned_write_le32(i32* %118, i32 50462976)
  %120 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %121 = load i32*, i32** @data, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = call i64 @memcmp(i32* %120, i32* %122, i32 4)
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert_se(i32 %125)
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %128 = call i32 @zero(i32* %127)
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 1
  %130 = call i32 @unaligned_write_le32(i32* %129, i32 67305985)
  %131 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 1
  %132 = load i32*, i32** @data, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = call i64 @memcmp(i32* %131, i32* %133, i32 4)
  %135 = icmp eq i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert_se(i32 %136)
  %138 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %139 = call i32 @zero(i32* %138)
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 2
  %141 = call i32 @unaligned_write_le32(i32* %140, i32 84148994)
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 2
  %143 = load i32*, i32** @data, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = call i64 @memcmp(i32* %142, i32* %144, i32 4)
  %146 = icmp eq i64 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert_se(i32 %147)
  %149 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %150 = call i32 @zero(i32* %149)
  %151 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 3
  %152 = call i32 @unaligned_write_le32(i32* %151, i32 100992003)
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 3
  %154 = load i32*, i32** @data, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 3
  %156 = call i64 @memcmp(i32* %153, i32* %155, i32 4)
  %157 = icmp eq i64 %156, 0
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert_se(i32 %158)
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %161 = call i32 @zero(i32* %160)
  %162 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %163 = call i32 @unaligned_write_le64(i32* %162, i32 50462976)
  %164 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %165 = load i32*, i32** @data, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = call i64 @memcmp(i32* %164, i32* %166, i32 4)
  %168 = icmp eq i64 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert_se(i32 %169)
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %172 = call i32 @zero(i32* %171)
  %173 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 1
  %174 = call i32 @unaligned_write_le64(i32* %173, i32 67305985)
  %175 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 1
  %176 = load i32*, i32** @data, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = call i64 @memcmp(i32* %175, i32* %177, i32 4)
  %179 = icmp eq i64 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert_se(i32 %180)
  %182 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %183 = call i32 @zero(i32* %182)
  %184 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 2
  %185 = call i32 @unaligned_write_le64(i32* %184, i32 84148994)
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 2
  %187 = load i32*, i32** @data, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = call i64 @memcmp(i32* %186, i32* %188, i32 4)
  %190 = icmp eq i64 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert_se(i32 %191)
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %194 = call i32 @zero(i32* %193)
  %195 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 3
  %196 = call i32 @unaligned_write_le64(i32* %195, i32 100992003)
  %197 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 3
  %198 = load i32*, i32** @data, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 3
  %200 = call i64 @memcmp(i32* %197, i32* %199, i32 4)
  %201 = icmp eq i64 %200, 0
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert_se(i32 %202)
  %204 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %205 = call i32 @zero(i32* %204)
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 4
  %207 = call i32 @unaligned_write_le64(i32* %206, i32 117835012)
  %208 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 4
  %209 = load i32*, i32** @data, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 4
  %211 = call i64 @memcmp(i32* %208, i32* %210, i32 4)
  %212 = icmp eq i64 %211, 0
  %213 = zext i1 %212 to i32
  %214 = call i32 @assert_se(i32 %213)
  %215 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %216 = call i32 @zero(i32* %215)
  %217 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 5
  %218 = call i32 @unaligned_write_le64(i32* %217, i32 134678021)
  %219 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 5
  %220 = load i32*, i32** @data, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 5
  %222 = call i64 @memcmp(i32* %219, i32* %221, i32 4)
  %223 = icmp eq i64 %222, 0
  %224 = zext i1 %223 to i32
  %225 = call i32 @assert_se(i32 %224)
  %226 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %227 = call i32 @zero(i32* %226)
  %228 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 6
  %229 = call i32 @unaligned_write_le64(i32* %228, i32 151521030)
  %230 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 6
  %231 = load i32*, i32** @data, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 6
  %233 = call i64 @memcmp(i32* %230, i32* %232, i32 4)
  %234 = icmp eq i64 %233, 0
  %235 = zext i1 %234 to i32
  %236 = call i32 @assert_se(i32 %235)
  %237 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %238 = call i32 @zero(i32* %237)
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 7
  %240 = call i32 @unaligned_write_le64(i32* %239, i32 168364039)
  %241 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 7
  %242 = load i32*, i32** @data, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 7
  %244 = call i64 @memcmp(i32* %241, i32* %243, i32 4)
  %245 = icmp eq i64 %244, 0
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert_se(i32 %246)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @unaligned_read_le16(i32*) #1

declare dso_local i32 @unaligned_read_le32(i32*) #1

declare dso_local i32 @unaligned_read_le64(i32*) #1

declare dso_local i32 @zero(i32*) #1

declare dso_local i32 @unaligned_write_le16(i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @unaligned_write_le32(i32*, i32) #1

declare dso_local i32 @unaligned_write_le64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
