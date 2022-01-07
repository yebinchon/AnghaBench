; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_paste.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_paste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i64, %struct.utf8_data*, %struct.utf8_data* }
%struct.utf8_data = type { i64, i64 }
%struct.paste_buffer = type { i32 }

@UTF8_MORE = common dso_local global i32 0, align 4
@UTF8_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*)* @status_prompt_paste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_prompt_paste(%struct.client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.client*, align 8
  %4 = alloca %struct.paste_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.utf8_data*, align 8
  %11 = alloca %struct.utf8_data*, align 8
  %12 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %3, align 8
  %13 = load %struct.client*, %struct.client** %3, align 8
  %14 = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 2
  %15 = load %struct.utf8_data*, %struct.utf8_data** %14, align 8
  %16 = call i64 @utf8_strlen(%struct.utf8_data* %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.client*, %struct.client** %3, align 8
  %18 = getelementptr inbounds %struct.client, %struct.client* %17, i32 0, i32 1
  %19 = load %struct.utf8_data*, %struct.utf8_data** %18, align 8
  %20 = icmp ne %struct.utf8_data* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.client*, %struct.client** %3, align 8
  %23 = getelementptr inbounds %struct.client, %struct.client* %22, i32 0, i32 1
  %24 = load %struct.utf8_data*, %struct.utf8_data** %23, align 8
  store %struct.utf8_data* %24, %struct.utf8_data** %10, align 8
  %25 = load %struct.client*, %struct.client** %3, align 8
  %26 = getelementptr inbounds %struct.client, %struct.client* %25, i32 0, i32 1
  %27 = load %struct.utf8_data*, %struct.utf8_data** %26, align 8
  %28 = call i64 @utf8_strlen(%struct.utf8_data* %27)
  store i64 %28, i64* %7, align 8
  br label %122

29:                                               ; preds = %1
  %30 = call %struct.paste_buffer* @paste_get_top(i32* null)
  store %struct.paste_buffer* %30, %struct.paste_buffer** %4, align 8
  %31 = icmp eq %struct.paste_buffer* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %219

33:                                               ; preds = %29
  %34 = load %struct.paste_buffer*, %struct.paste_buffer** %4, align 8
  %35 = call i8* @paste_buffer_data(%struct.paste_buffer* %34, i64* %8)
  store i8* %35, i8** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  %38 = call i8* @xreallocarray(%struct.utf8_data* null, i64 %37, i32 16)
  %39 = bitcast i8* %38 to %struct.utf8_data*
  store %struct.utf8_data* %39, %struct.utf8_data** %10, align 8
  %40 = load %struct.utf8_data*, %struct.utf8_data** %10, align 8
  store %struct.utf8_data* %40, %struct.utf8_data** %11, align 8
  store i64 0, i64* %9, align 8
  br label %41

41:                                               ; preds = %102, %78, %33
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %113

45:                                               ; preds = %41
  %46 = load %struct.utf8_data*, %struct.utf8_data** %11, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @utf8_open(%struct.utf8_data* %46, i8 signext %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @UTF8_MORE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %67, %55
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @UTF8_MORE, align 4
  %64 = icmp eq i32 %62, %63
  br label %65

65:                                               ; preds = %61, %56
  %66 = phi i1 [ false, %56 ], [ %64, %61 ]
  br i1 %66, label %67, label %74

67:                                               ; preds = %65
  %68 = load %struct.utf8_data*, %struct.utf8_data** %11, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @utf8_append(%struct.utf8_data* %68, i8 signext %72)
  store i32 %73, i32* %12, align 4
  br label %56

74:                                               ; preds = %65
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @UTF8_DONE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.utf8_data*, %struct.utf8_data** %11, align 8
  %80 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %79, i32 1
  store %struct.utf8_data* %80, %struct.utf8_data** %11, align 8
  br label %41

81:                                               ; preds = %74
  %82 = load %struct.utf8_data*, %struct.utf8_data** %11, align 8
  %83 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %9, align 8
  br label %87

87:                                               ; preds = %81, %45
  %88 = load i8*, i8** %5, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sle i32 %92, 31
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = load i8*, i8** %5, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sge i32 %99, 127
  br i1 %100, label %101, label %102

101:                                              ; preds = %94, %87
  br label %113

102:                                              ; preds = %94
  %103 = load %struct.utf8_data*, %struct.utf8_data** %11, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = call i32 @utf8_set(%struct.utf8_data* %103, i8 signext %107)
  %109 = load %struct.utf8_data*, %struct.utf8_data** %11, align 8
  %110 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %109, i32 1
  store %struct.utf8_data* %110, %struct.utf8_data** %11, align 8
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %9, align 8
  br label %41

113:                                              ; preds = %101, %41
  %114 = load %struct.utf8_data*, %struct.utf8_data** %11, align 8
  %115 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  %116 = load %struct.utf8_data*, %struct.utf8_data** %11, align 8
  %117 = load %struct.utf8_data*, %struct.utf8_data** %10, align 8
  %118 = ptrtoint %struct.utf8_data* %116 to i64
  %119 = ptrtoint %struct.utf8_data* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 16
  store i64 %121, i64* %7, align 8
  br label %122

122:                                              ; preds = %113, %21
  %123 = load i64, i64* %7, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %219

126:                                              ; preds = %122
  %127 = load %struct.client*, %struct.client** %3, align 8
  %128 = getelementptr inbounds %struct.client, %struct.client* %127, i32 0, i32 2
  %129 = load %struct.utf8_data*, %struct.utf8_data** %128, align 8
  %130 = load i64, i64* %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = add i64 %130, %131
  %133 = add i64 %132, 1
  %134 = call i8* @xreallocarray(%struct.utf8_data* %129, i64 %133, i32 16)
  %135 = bitcast i8* %134 to %struct.utf8_data*
  %136 = load %struct.client*, %struct.client** %3, align 8
  %137 = getelementptr inbounds %struct.client, %struct.client* %136, i32 0, i32 2
  store %struct.utf8_data* %135, %struct.utf8_data** %137, align 8
  %138 = load %struct.client*, %struct.client** %3, align 8
  %139 = getelementptr inbounds %struct.client, %struct.client* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %6, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %168

143:                                              ; preds = %126
  %144 = load %struct.client*, %struct.client** %3, align 8
  %145 = getelementptr inbounds %struct.client, %struct.client* %144, i32 0, i32 2
  %146 = load %struct.utf8_data*, %struct.utf8_data** %145, align 8
  %147 = load %struct.client*, %struct.client** %3, align 8
  %148 = getelementptr inbounds %struct.client, %struct.client* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %146, i64 %149
  %151 = load %struct.utf8_data*, %struct.utf8_data** %10, align 8
  %152 = load i64, i64* %7, align 8
  %153 = mul i64 %152, 16
  %154 = call i32 @memcpy(%struct.utf8_data* %150, %struct.utf8_data* %151, i64 %153)
  %155 = load i64, i64* %7, align 8
  %156 = load %struct.client*, %struct.client** %3, align 8
  %157 = getelementptr inbounds %struct.client, %struct.client* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, %155
  store i64 %159, i64* %157, align 8
  %160 = load %struct.client*, %struct.client** %3, align 8
  %161 = getelementptr inbounds %struct.client, %struct.client* %160, i32 0, i32 2
  %162 = load %struct.utf8_data*, %struct.utf8_data** %161, align 8
  %163 = load %struct.client*, %struct.client** %3, align 8
  %164 = getelementptr inbounds %struct.client, %struct.client* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %162, i64 %165
  %167 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %166, i32 0, i32 0
  store i64 0, i64* %167, align 8
  br label %209

168:                                              ; preds = %126
  %169 = load %struct.client*, %struct.client** %3, align 8
  %170 = getelementptr inbounds %struct.client, %struct.client* %169, i32 0, i32 2
  %171 = load %struct.utf8_data*, %struct.utf8_data** %170, align 8
  %172 = load %struct.client*, %struct.client** %3, align 8
  %173 = getelementptr inbounds %struct.client, %struct.client* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %171, i64 %174
  %176 = load i64, i64* %7, align 8
  %177 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %175, i64 %176
  %178 = load %struct.client*, %struct.client** %3, align 8
  %179 = getelementptr inbounds %struct.client, %struct.client* %178, i32 0, i32 2
  %180 = load %struct.utf8_data*, %struct.utf8_data** %179, align 8
  %181 = load %struct.client*, %struct.client** %3, align 8
  %182 = getelementptr inbounds %struct.client, %struct.client* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %180, i64 %183
  %185 = load i64, i64* %6, align 8
  %186 = add i64 %185, 1
  %187 = load %struct.client*, %struct.client** %3, align 8
  %188 = getelementptr inbounds %struct.client, %struct.client* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = sub i64 %186, %189
  %191 = mul i64 %190, 16
  %192 = call i32 @memmove(%struct.utf8_data* %177, %struct.utf8_data* %184, i64 %191)
  %193 = load %struct.client*, %struct.client** %3, align 8
  %194 = getelementptr inbounds %struct.client, %struct.client* %193, i32 0, i32 2
  %195 = load %struct.utf8_data*, %struct.utf8_data** %194, align 8
  %196 = load %struct.client*, %struct.client** %3, align 8
  %197 = getelementptr inbounds %struct.client, %struct.client* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %195, i64 %198
  %200 = load %struct.utf8_data*, %struct.utf8_data** %10, align 8
  %201 = load i64, i64* %7, align 8
  %202 = mul i64 %201, 16
  %203 = call i32 @memcpy(%struct.utf8_data* %199, %struct.utf8_data* %200, i64 %202)
  %204 = load i64, i64* %7, align 8
  %205 = load %struct.client*, %struct.client** %3, align 8
  %206 = getelementptr inbounds %struct.client, %struct.client* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = add i64 %207, %204
  store i64 %208, i64* %206, align 8
  br label %209

209:                                              ; preds = %168, %143
  %210 = load %struct.utf8_data*, %struct.utf8_data** %10, align 8
  %211 = load %struct.client*, %struct.client** %3, align 8
  %212 = getelementptr inbounds %struct.client, %struct.client* %211, i32 0, i32 1
  %213 = load %struct.utf8_data*, %struct.utf8_data** %212, align 8
  %214 = icmp ne %struct.utf8_data* %210, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load %struct.utf8_data*, %struct.utf8_data** %10, align 8
  %217 = call i32 @free(%struct.utf8_data* %216)
  br label %218

218:                                              ; preds = %215, %209
  store i32 1, i32* %2, align 4
  br label %219

219:                                              ; preds = %218, %125, %32
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i64 @utf8_strlen(%struct.utf8_data*) #1

declare dso_local %struct.paste_buffer* @paste_get_top(i32*) #1

declare dso_local i8* @paste_buffer_data(%struct.paste_buffer*, i64*) #1

declare dso_local i8* @xreallocarray(%struct.utf8_data*, i64, i32) #1

declare dso_local i32 @utf8_open(%struct.utf8_data*, i8 signext) #1

declare dso_local i32 @utf8_append(%struct.utf8_data*, i8 signext) #1

declare dso_local i32 @utf8_set(%struct.utf8_data*, i8 signext) #1

declare dso_local i32 @memcpy(%struct.utf8_data*, %struct.utf8_data*, i64) #1

declare dso_local i32 @memmove(%struct.utf8_data*, %struct.utf8_data*, i64) #1

declare dso_local i32 @free(%struct.utf8_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
